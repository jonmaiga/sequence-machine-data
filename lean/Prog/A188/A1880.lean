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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A188000: Number of nondecreasing arrangements of n numbers x(i) in -(n+5)..(n+5) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188000, there is no canonical definition to state claims against.
-/

/-! ## A188000.P14959360706014274050

`A188002(eq[7, A200370(n+1)])`
-/

namespace A188000.P14959360706014274050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188000.P14959360706014274050

/-!
# A188001: Number of nondecreasing arrangements of n numbers x(i) in -(n+6)..(n+6) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188001, there is no canonical definition to state claims against.
-/

/-! ## A188001.P6130549031071678175

`A344292(A125691(n+1))`
-/

namespace A188001.P6130549031071678175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344292 (A125691 (n + 1)).toNat

end

end A188001.P6130549031071678175

/-!
# A188003: Number of nondecreasing arrangements of 3 numbers x(i) in -(n+1)..(n+1) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188003, the canonical program `A188003.P15185431841001096043` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188003 has offset 1).

The definition of A188003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188003.P14644918680114198152

`ceil(A349538(n+2)/4)`
-/

namespace A188003.P14644918680114198152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349538 (n + 2) : ℚ) / 4⌉

end

end A188003.P14644918680114198152

namespace A188003

/-- `ceil(A349538(n+2)/4)` -/
def P14644918680114198152.Spec : Prop :=
  ∀ n, P14644918680114198152.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P1056568414215377180

`ceil(A211432(n+2)/8)`
-/

namespace A188003.P1056568414215377180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211432 (n + 2) : ℚ) / 8⌉

end

end A188003.P1056568414215377180

namespace A188003

/-- `ceil(A211432(n+2)/8)` -/
def P1056568414215377180.Spec : Prop :=
  ∀ n, P1056568414215377180.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P10410544789821510420

`∑[A256452(n+2)]+2`
-/

namespace A188003.P10410544789821510420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188003.P10410544789821510420

namespace A188003

/-- `∑[A256452(n+2)]+2` -/
def P10410544789821510420.Spec : Prop :=
  ∀ n, P10410544789821510420.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P15185431841001096043

`A063468(n+2)+3+n`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A188003

/-- `A063468(n+2)+3+n` -/
def P15185431841001096043.Spec : Prop :=
  ∀ n, P15185431841001096043.a n = A188003 (n + 1)

theorem P15185431841001096043.correct : P15185431841001096043.Spec := by
  intro n
  simp only [A188003, Nat.add_sub_cancel]

end A188003

/-! ## A188003.P7746359393994139077

`∑[A338939(2*(n+2))]+2`
-/

namespace A188003.P7746359393994139077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188003.P7746359393994139077

namespace A188003

/-- `∑[A338939(2*(n+2))]+2` -/
def P7746359393994139077.Spec : Prop :=
  ∀ n, P7746359393994139077.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P5049357454345430207

`∑[A046109(n+2)/4]+2`
-/

namespace A188003.P5049357454345430207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046109 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188003.P5049357454345430207

namespace A188003

/-- `∑[A046109(n+2)/4]+2` -/
def P5049357454345430207.Spec : Prop :=
  ∀ n, P5049357454345430207.a n = (A188003 (n + 1) : ℚ)

end A188003

/-! ## A188003.P8247233105693667104

`2*A224921(n+3)+n+3`
-/

namespace A188003.P8247233105693667104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224921 (n + 3) + (n + 3 : ℤ)

end

end A188003.P8247233105693667104

namespace A188003

/-- `2*A224921(n+3)+n+3` -/
def P8247233105693667104.Spec : Prop :=
  ∀ n, P8247233105693667104.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P5566153374303100939

`∑[A256452(A004273(n)+5)]`
-/

namespace A188003.P5566153374303100939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (A004273 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188003.P5566153374303100939

namespace A188003

/-- `∑[A256452(A004273(n)+5)]` -/
def P5566153374303100939.Spec : Prop :=
  ∀ n, P5566153374303100939.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P6329633446777573198

`∑[A000005(A170818(n+2)²)]+2`
-/

namespace A188003.P6329633446777573198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A170818 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188003.P6329633446777573198

namespace A188003

/-- `∑[A000005(A170818(n+2)²)]+2` -/
def P6329633446777573198.Spec : Prop :=
  ∀ n, P6329633446777573198.a n = A188003 (n + 1)

end A188003

/-! ## A188003.P15742768710809589657

`∑[A002654((n+2)²)]+2`
-/

namespace A188003.P15742768710809589657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A188003.P15742768710809589657

namespace A188003

/-- `∑[A002654((n+2)²)]+2` -/
def P15742768710809589657.Spec : Prop :=
  ∀ n, P15742768710809589657.a n = A188003 (n + 1)

end A188003

/-!
# A188004: Number of nondecreasing arrangements of 4 numbers x(i) in -(n+2)..(n+2) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188004, there is no canonical definition to state claims against.
-/

/-! ## A188004.P9244282040267976395

`A188002(∑[n+3]+7)`
-/

namespace A188004.P9244282040267976395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188004.P9244282040267976395

/-!
# A188005: Number of nondecreasing arrangements of 5 numbers x(i) in -(n+3)..(n+3) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188005, there is no canonical definition to state claims against.
-/

/-! ## A188005.P9103554157549099754

`A188002(A167499(n+3))`
-/

namespace A188005.P9103554157549099754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A167499 (n + 3)).toNat

end

end A188005.P9103554157549099754

/-! ## A188005.P4636354123862380433

`A188002(A155212(n)+13)`
-/

namespace A188005.P4636354123862380433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A155212 n + 13).toNat

end

end A188005.P4636354123862380433

/-! ## A188005.P6643828816396464936

`A188002(A056000(n)+15)`
-/

namespace A188005.P6643828816396464936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A056000 n + 15).toNat

end

end A188005.P6643828816396464936

/-! ## A188005.P15495642662959587765

`A188002(eq[7, A066657(n)])`
-/

namespace A188005.P15495642662959587765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188005.P15495642662959587765

/-! ## A188005.P12870358085217957040

`A188002(A000124(n+4)+4)`
-/

namespace A188005.P12870358085217957040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000124 (n + 4) + 4).toNat

end

end A188005.P12870358085217957040

/-!
# A188006: Number of nondecreasing arrangements of 6 numbers x(i) in -(n+4)..(n+4) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188006, there is no canonical definition to state claims against.
-/

/-! ## A188006.P17760242987353780103

`A188002(A166136(n+4))`
-/

namespace A188006.P17760242987353780103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A166136 (n + 4)).toNat

end

end A188006.P17760242987353780103

/-! ## A188006.P6161637060894277690

`A188002(A056115(n)+21)`
-/

namespace A188006.P6161637060894277690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A056115 n + 21).toNat

end

end A188006.P6161637060894277690

/-! ## A188006.P13070281578262538152

`A188002(A167499(n+4)+1)`
-/

namespace A188006.P13070281578262538152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A167499 (n + 4) + 1).toNat

end

end A188006.P13070281578262538152

/-! ## A188006.P12368563624729739406

`A188002(A000217(n+5)+6)`
-/

namespace A188006.P12368563624729739406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000217 (n + 5) + 6).toNat

end

end A188006.P12368563624729739406

/-! ## A188006.P18435924954822685502

`A188002(A046691(n+3)+10)`
-/

namespace A188006.P18435924954822685502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A046691 (n + 3) + 10).toNat

end

end A188006.P18435924954822685502

/-!
# A188007: Number of nondecreasing arrangements of 7 numbers x(i) in -(n+5)..(n+5) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188007, there is no canonical definition to state claims against.
-/

/-! ## A188007.P12268778445671782543

`A188002(A056119(n)+28)`
-/

namespace A188007.P12268778445671782543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A056119 n + 28).toNat

end

end A188007.P12268778445671782543

/-! ## A188007.P14906308742572823347

`A188002(eq[11, A066657(n)])`
-/

namespace A188007.P14906308742572823347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188007.P14906308742572823347

/-! ## A188007.P15185316607149182998

`A188002(A000096(n+5)+8)`
-/

namespace A188007.P15185316607149182998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000096 (n + 5) + 8).toNat

end

end A188007.P15185316607149182998

/-! ## A188007.P4441284068221656239

`A188002(A000217(n+6)+7)`
-/

namespace A188007.P4441284068221656239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000217 (n + 6) + 7).toNat

end

end A188007.P4441284068221656239

/-! ## A188007.P6779174018193045880

`A188002(A046691(n+4)+11)`
-/

namespace A188007.P6779174018193045880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A046691 (n + 4) + 11).toNat

end

end A188007.P6779174018193045880

/-!
# A188008: Number of nondecreasing arrangements of 8 numbers x(i) in -(n+6)..(n+6) with the sum of sign(x(i))*x(i)^2 zero.

The programs for A188008, there is no canonical definition to state claims against.
-/

/-! ## A188008.P70858497987412573

`A188002(eq[13, A066657(n)])`
-/

namespace A188008.P70858497987412573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188008.P70858497987412573

/-! ## A188008.P1366010951435574102

`A188002(A000124(n+7)+7)`
-/

namespace A188008.P1366010951435574102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000124 (n + 7) + 7).toNat

end

end A188008.P1366010951435574102

/-! ## A188008.P3464907335882897536

`A188002(A000217(n+7)+8)`
-/

namespace A188008.P3464907335882897536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A000217 (n + 7) + 8).toNat

end

end A188008.P3464907335882897536

/-! ## A188008.P2977913774245479506

`A188002(A056119(n+1)+29)`
-/

namespace A188008.P2977913774245479506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (A056119 (n + 1) + 29).toNat

end

end A188008.P2977913774245479506

/-! ## A188008.P4027124414937533691

`A188002(eq[9, A131818(n+1)])`
-/

namespace A188008.P4027124414937533691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188002 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188008.P4027124414937533691

/-!
# A188009: a(n) = [nr] - [nr-kr] - [kr], where r=(1+sqrt(5))/2, k=2, [ ]=floor.

The programs for A188009, the canonical program `A188009.P134641851213232026` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188009 has offset 1).

The definition of A188009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188009.P3107837275063577286

`Δ[floor(floor(n/ϕ)/ϕ²)]`
-/

namespace A188009.P3107837275063577286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℝ) / Real.goldenRatio⌋ : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188009.P3107837275063577286

namespace A188009

/-- `Δ[floor(floor(n/ϕ)/ϕ²)]` -/
def P3107837275063577286.Spec : Prop :=
  ∀ n, P3107837275063577286.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P10420938977335226363

`char[A089910(n+1)]`
-/

namespace A188009.P10420938977335226363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P10420938977335226363

namespace A188009

/-- `char[A089910(n+1)]` -/
def P10420938977335226363.Spec : Prop :=
  ∀ n, (P10420938977335226363.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P16179712628918401864

`char[A276885(n+2)]`
-/

namespace A188009.P16179712628918401864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P16179712628918401864

namespace A188009

/-- `char[A276885(n+2)]` -/
def P16179712628918401864.Spec : Prop :=
  ∀ n, (P16179712628918401864.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P4534136842265633054

`and(2, A215022(n))/2`
-/

namespace A188009.P4534136842265633054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A215022 n) : ℚ) / 2

end

end A188009.P4534136842265633054

namespace A188009

/-- `and(2, A215022(n))/2` -/
def P4534136842265633054.Spec : Prop :=
  ∀ n, P4534136842265633054.a n = (A188009 (n + 1) : ℚ)

end A188009

/-! ## A188009.P14534543027682712522

`and(2, A215024(n))/2`
-/

namespace A188009.P14534543027682712522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A215024 n) : ℚ) / 2

end

end A188009.P14534543027682712522

namespace A188009

/-- `and(2, A215024(n))/2` -/
def P14534543027682712522.Spec : Prop :=
  ∀ n, P14534543027682712522.a n = (A188009 (n + 1) : ℚ)

end A188009

/-! ## A188009.P8926383286298089465

`char[Δ[A026353(n+2)]]`
-/

namespace A188009.P8926383286298089465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P8926383286298089465

namespace A188009

/-- `char[Δ[A026353(n+2)]]` -/
def P8926383286298089465.Spec : Prop :=
  ∀ n, (P8926383286298089465.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P578775947710555515

`char[A003623(n+1)+1]`
-/

namespace A188009.P578775947710555515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P578775947710555515

namespace A188009

/-- `char[A003623(n+1)+1]` -/
def P578775947710555515.Spec : Prop :=
  ∀ n, (P578775947710555515.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P17133168413037340474

`char[A035336(n+1)+2]`
-/

namespace A188009.P17133168413037340474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P17133168413037340474

namespace A188009

/-- `char[A035336(n+1)+2]` -/
def P17133168413037340474.Spec : Prop :=
  ∀ n, (P17133168413037340474.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P9825442265394531016

`char[comp[A188010(n+1)-1]]`
-/

namespace A188009.P9825442265394531016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188009.P9825442265394531016

namespace A188009

/-- `char[comp[A188010(n+1)-1]]` -/
def P9825442265394531016.Spec : Prop :=
  ∀ n, (P9825442265394531016.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P17415081546319095521

`char[A187952(2*(n+1))+1]`
-/

namespace A188009.P17415081546319095521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (2 * (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P17415081546319095521

namespace A188009

/-- `char[A187952(2*(n+1))+1]` -/
def P17415081546319095521.Spec : Prop :=
  ∀ n, (P17415081546319095521.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P12422468570603560910

`char[A188016(2*(n+1))-1]`
-/

namespace A188009.P12422468570603560910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188009.P12422468570603560910

namespace A188009

/-- `char[A188016(2*(n+1))-1]` -/
def P12422468570603560910.Spec : Prop :=
  ∀ n, (P12422468570603560910.a n : ℤ) = A188009 (n + 1)

end A188009

/-! ## A188009.P134641851213232026

`A096270(n-A078588(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188009

/-- `A096270(n-A078588(n))` -/
def P134641851213232026.Spec : Prop :=
  ∀ n, P134641851213232026.a n = A188009 (n + 1)

theorem P134641851213232026.correct : P134641851213232026.Spec := by
  intro n
  simp only [A188009, Nat.add_sub_cancel]

end A188009

/-! ## A188009.P13674828031642154679

`A096270(n-A096270(n))`
-/

namespace A188009.P13674828031642154679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) - A096270 n).toNat

end

end A188009.P13674828031642154679

namespace A188009

/-- `A096270(n-A096270(n))` -/
def P13674828031642154679.Spec : Prop :=
  ∀ n, P13674828031642154679.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P15122004135375368364

`A188432(A026351(n)-n)`
-/

namespace A188009.P15122004135375368364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A026351 n - (n : ℤ)).toNat

end

end A188009.P15122004135375368364

namespace A188009

/-- `A188432(A026351(n)-n)` -/
def P15122004135375368364.Spec : Prop :=
  ∀ n, P15122004135375368364.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P11132520260740647981

`and(A060142(n), A316342(n))`
-/

namespace A188009.P11132520260740647981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060142 n) (A316342 n)

end

end A188009.P11132520260740647981

namespace A188009

/-- `and(A060142(n), A316342(n))` -/
def P11132520260740647981.Spec : Prop :=
  ∀ n, P11132520260740647981.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P6177096307212252175

`and(A280873(n), A316342(n))`
-/

namespace A188009.P6177096307212252175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280873 n) (A316342 n)

end

end A188009.P6177096307212252175

namespace A188009

/-- `and(A280873(n), A316342(n))` -/
def P6177096307212252175.Spec : Prop :=
  ∀ n, P6177096307212252175.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P11783728740676157133

`and(A316342(n), A358654(n))`
-/

namespace A188009.P11783728740676157133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316342 n) (A358654 n)

end

end A188009.P11783728740676157133

namespace A188009

/-- `and(A316342(n), A358654(n))` -/
def P11783728740676157133.Spec : Prop :=
  ∀ n, P11783728740676157133.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P4469404243977969402

`and(A316342(n), A381579(n))`
-/

namespace A188009.P4469404243977969402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A316342 n) (A381579 n)

end

end A188009.P4469404243977969402

namespace A188009

/-- `and(A316342(n), A381579(n))` -/
def P4469404243977969402.Spec : Prop :=
  ∀ n, P4469404243977969402.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P532765998000325704

`A003849(n-A189661(n+1))`
-/

namespace A188009.P532765998000325704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((n : ℤ) - A189661 (n + 1)).toNat

end

end A188009.P532765998000325704

namespace A188009

/-- `A003849(n-A189661(n+1))` -/
def P532765998000325704.Spec : Prop :=
  ∀ n, P532765998000325704.a n = A188009 (n + 1)

end A188009

/-! ## A188009.P11765829266090572898

`A060576(n)-A188433(n+1)`
-/

namespace A188009.P11765829266090572898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n - A188433 (n + 1)

end

end A188009.P11765829266090572898

namespace A188009

/-- `A060576(n)-A188433(n+1)` -/
def P11765829266090572898.Spec : Prop :=
  ∀ n, P11765829266090572898.a n = A188009 (n + 1)

end A188009

/-!
# A188010: Positions of 0 in A188009; complement of A101866.

The programs for A188010, the canonical program `A188010.P5856067489415805661` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188010 has offset 1).

The definition of A188010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188010.P5856067489415805661

`floor(∑[ϕ/a(n-1)])` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188010

/-- `floor(∑[ϕ/a(n-1)])` -/
def P5856067489415805661.Spec : Prop :=
  ∀ n, P5856067489415805661.a n = A188010 (n + 1)

theorem P5856067489415805661.correct : P5856067489415805661.Spec := by
  intro n
  simp only [A188010, Nat.add_sub_cancel]

end A188010

/-! ## A188010.P5119886189753248139

`floor(∑[ϕ²-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A188010.P5119886189753248139
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188010.P5119886189753248139

namespace A188010

/-- `floor(∑[ϕ²-a(n-1)])` -/
def P5119886189753248139.Spec : Prop :=
  ∀ n, P5119886189753248139.a n = A188010 (n + 1)

end A188010

/-! ## A188010.P10727944676172868023

`floor(floor(n/2)/ϕ+1+n)`
-/

namespace A188010.P10727944676172868023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ : ℝ) / Real.goldenRatio + 1 + (n : ℝ)⌋

end

end A188010.P10727944676172868023

namespace A188010

/-- `floor(floor(n/2)/ϕ+1+n)` -/
def P10727944676172868023.Spec : Prop :=
  ∀ n, P10727944676172868023.a n = A188010 (n + 1)

end A188010

/-! ## A188010.P18356835656963631380

`-ceil(-∑[ϕ/a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A188010.P18356835656963631380
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-(∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A188010.P18356835656963631380

namespace A188010

/-- `-ceil(-∑[ϕ/a(n-1)])` -/
def P18356835656963631380.Spec : Prop :=
  ∀ n, P18356835656963631380.a n = A188010 (n + 1)

end A188010

/-! ## A188010.P9596406385657355288

`-ceil(-∑[ϕ²-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A188010.P9596406385657355288
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-(∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A188010.P9596406385657355288

namespace A188010

/-- `-ceil(-∑[ϕ²-a(n-1)])` -/
def P9596406385657355288.Spec : Prop :=
  ∀ n, P9596406385657355288.a n = A188010 (n + 1)

end A188010

/-! ## A188010.P6890690542708994847

`ceil(ceil(a(n-1)/ϕ)/ϕ²+n)` with `a(0)=1`
-/

namespace A188010.P6890690542708994847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(⌈(a (n - 1) : ℝ) / Real.goldenRatio⌉ : ℝ) / Real.goldenRatio ^ 2 + (n : ℝ)⌉

end

end A188010.P6890690542708994847

namespace A188010

/-- `ceil(ceil(a(n-1)/ϕ)/ϕ²+n)` -/
def P6890690542708994847.Spec : Prop :=
  ∀ n, P6890690542708994847.a n = A188010 (n + 1)

end A188010

/-! ## A188010.P2897506152292950424

`comp[A089910(n+1)]+1`
-/

namespace A188010.P2897506152292950424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188010.P2897506152292950424

namespace A188010

/-- `comp[A089910(n+1)]+1` -/
def P2897506152292950424.Spec : Prop :=
  ∀ n, (P2897506152292950424.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P12674661656751368942

`comp[A276885(n+2)]+1`
-/

namespace A188010.P12674661656751368942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188010.P12674661656751368942

namespace A188010

/-- `comp[A276885(n+2)]+1` -/
def P12674661656751368942.Spec : Prop :=
  ∀ n, (P12674661656751368942.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P6273982703626595065

`comp[2*A004956(n)+n]`
-/

namespace A188010.P6273982703626595065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004956 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P6273982703626595065

namespace A188010

/-- `comp[2*A004956(n)+n]` -/
def P6273982703626595065.Spec : Prop :=
  ∀ n, (P6273982703626595065.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P10381516695972294223

`comp[2*A004957(n)-n]`
-/

namespace A188010.P10381516695972294223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004957 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P10381516695972294223

namespace A188010

/-- `comp[2*A004957(n)-n]` -/
def P10381516695972294223.Spec : Prop :=
  ∀ n, (P10381516695972294223.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P3363476394988198696

`comp[A003623(n+1)+1]+1`
-/

namespace A188010.P3363476394988198696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188010.P3363476394988198696

namespace A188010

/-- `comp[A003623(n+1)+1]+1` -/
def P3363476394988198696.Spec : Prop :=
  ∀ n, (P3363476394988198696.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P8682040298185173262

`comp[A035336(n+1)+2]+1`
-/

namespace A188010.P8682040298185173262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188010.P8682040298185173262

namespace A188010

/-- `comp[A035336(n+1)+2]+1` -/
def P8682040298185173262.Spec : Prop :=
  ∀ n, (P8682040298185173262.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P7687566042416790999

`comp[A188016(2*n+1)-2]`
-/

namespace A188010.P7687566042416790999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P7687566042416790999

namespace A188010

/-- `comp[A188016(2*n+1)-2]` -/
def P7687566042416790999.Spec : Prop :=
  ∀ n, (P7687566042416790999.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P15546988365573561863

`comp[comp[floor(ϕ*n)]*A096270(n)]`
-/

namespace A188010.P15546988365573561863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A096270 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P15546988365573561863

namespace A188010

/-- `comp[comp[floor(ϕ*n)]*A096270(n)]` -/
def P15546988365573561863.Spec : Prop :=
  ∀ n, (P15546988365573561863.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P5435807938521879844

`comp[(Δ[floor(ϕ*n)]-1)*A001950(n+1)]`
-/

namespace A188010.P5435807938521879844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - 1) * A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P5435807938521879844

namespace A188010

/-- `comp[(Δ[floor(ϕ*n)]-1)*A001950(n+1)]` -/
def P5435807938521879844.Spec : Prop :=
  ∀ n, (P5435807938521879844.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P3682808497295705553

`comp[(A003622(n+1)+1)*(2*n+1)%Δ[floor(ϕ*n)]]`
-/

namespace A188010.P3682808497295705553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003622 (n + 1) + 1) * Int.tmod (2 * n + 1 : ℤ) (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P3682808497295705553

namespace A188010

/-- `comp[(A003622(n+1)+1)*(2*n+1)%Δ[floor(ϕ*n)]]` -/
def P3682808497295705553.Spec : Prop :=
  ∀ n, (P3682808497295705553.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P14390891607998870798

`comp[A002251(comp[A026351(n)])]`
-/

namespace A188010.P14390891607998870798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P14390891607998870798

namespace A188010

/-- `comp[A002251(comp[A026351(n)])]` -/
def P14390891607998870798.Spec : Prop :=
  ∀ n, (P14390891607998870798.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P4705446941671766585

`comp[A022342(A004957(n)+1)]`
-/

namespace A188010.P4705446941671766585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A004957 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P4705446941671766585

namespace A188010

/-- `comp[A022342(A004957(n)+1)]` -/
def P4705446941671766585.Spec : Prop :=
  ∀ n, (P4705446941671766585.a n : ℤ) = A188010 (n + 1)

end A188010

/-! ## A188010.P5077612909064728785

`comp[A004956(A004956(n)+n)]`
-/

namespace A188010.P5077612909064728785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A004956 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188010.P5077612909064728785

namespace A188010

/-- `comp[A004956(A004956(n)+n)]` -/
def P5077612909064728785.Spec : Prop :=
  ∀ n, (P5077612909064728785.a n : ℤ) = A188010 (n + 1)

end A188010

/-!
# A188011: a(n) = floor(n*r) - floor(n*r-k*r) - floor(k*r), where r=(1+sqrt(5))/2, k=3.

The programs for A188011, the canonical program `A188011.P12941502559468805709` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188011 has offset 1).

The definition of A188011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188011.P14919930612705746765

`A188433(A005206(n+1))`
-/

namespace A188011.P14919930612705746765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A005206 (n + 1)).toNat

end

end A188011.P14919930612705746765

namespace A188011

/-- `A188433(A005206(n+1))` -/
def P14919930612705746765.Spec : Prop :=
  ∀ n, P14919930612705746765.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P12941502559468805709

`A188014(A014675(n)+n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188011

/-- `A188014(A014675(n)+n)` -/
def P12941502559468805709.Spec : Prop :=
  ∀ n, P12941502559468805709.a n = A188011 (n + 1)

theorem P12941502559468805709.correct : P12941502559468805709.Spec := by
  intro n
  simp only [A188011, Nat.add_sub_cancel]

end A188011

/-! ## A188011.P4635784202745740568

`A188014(A005614(n)+n+1)`
-/

namespace A188011.P4635784202745740568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A005614 n + (n + 1 : ℤ)).toNat

end

end A188011.P4635784202745740568

namespace A188011

/-- `A188014(A005614(n)+n+1)` -/
def P4635784202745740568.Spec : Prop :=
  ∀ n, P4635784202745740568.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P417220854103678772

`A188014(A096270(n+1)+n+1)`
-/

namespace A188011.P417220854103678772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A096270 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188011.P417220854103678772

namespace A188011

/-- `A188014(A096270(n+1)+n+1)` -/
def P417220854103678772.Spec : Prop :=
  ∀ n, P417220854103678772.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P17887781821160631886

`A188014(A120613(n+2)+1)`
-/

namespace A188011.P17887781821160631886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A120613 (n + 2) + 1).toNat

end

end A188011.P17887781821160631886

namespace A188011

/-- `A188014(A120613(n+2)+1)` -/
def P17887781821160631886.Spec : Prop :=
  ∀ n, P17887781821160631886.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P17867246608890208692

`A188014(n+2)+A003849(n)`
-/

namespace A188011.P17867246608890208692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 2) + A003849 n

end

end A188011.P17867246608890208692

namespace A188011

/-- `A188014(n+2)+A003849(n)` -/
def P17867246608890208692.Spec : Prop :=
  ∀ n, P17867246608890208692.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P4453427990677230525

`A005713(A188014(n+2)+n)`
-/

namespace A188011.P4453427990677230525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A188014 (n + 2) + (n : ℤ)).toNat

end

end A188011.P4453427990677230525

namespace A188011

/-- `A005713(A188014(n+2)+n)` -/
def P4453427990677230525.Spec : Prop :=
  ∀ n, P4453427990677230525.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P3855310857400784023

`A096270(A188014(n+2)+n)`
-/

namespace A188011.P3855310857400784023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A188014 (n + 2) + (n : ℤ)).toNat

end

end A188011.P3855310857400784023

namespace A188011

/-- `A096270(A188014(n+2)+n)` -/
def P3855310857400784023.Spec : Prop :=
  ∀ n, P3855310857400784023.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P1482050961005134953

`A114986(A188014(n+2)+n)`
-/

namespace A188011.P1482050961005134953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A188014 (n + 2) + (n : ℤ)).toNat

end

end A188011.P1482050961005134953

namespace A188011

/-- `A114986(A188014(n+2)+n)` -/
def P1482050961005134953.Spec : Prop :=
  ∀ n, P1482050961005134953.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P5848738835083598870

`A188014(A188014(n+2)+n+1)`
-/

namespace A188011.P5848738835083598870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A188014 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188011.P5848738835083598870

namespace A188011

/-- `A188014(A188014(n+2)+n+1)` -/
def P5848738835083598870.Spec : Prop :=
  ∀ n, P5848738835083598870.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P8604218715113301346

`A188433(A000201(n+2)-(n+2))`
-/

namespace A188011.P8604218715113301346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A000201 (n + 2) - (n + 2 : ℤ)).toNat

end

end A188011.P8604218715113301346

namespace A188011

/-- `A188433(A000201(n+2)-(n+2))` -/
def P8604218715113301346.Spec : Prop :=
  ∀ n, P8604218715113301346.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P16241373999978722308

`A123070(A005206(n+1))-A060144(n+1)`
-/

namespace A188011.P16241373999978722308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A005206 (n + 1)).toNat - A060144 (n + 1)

end

end A188011.P16241373999978722308

namespace A188011

/-- `A123070(A005206(n+1))-A060144(n+1)` -/
def P16241373999978722308.Spec : Prop :=
  ∀ n, P16241373999978722308.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P1347789844471554685

`A123070(A123070(n+1))-A060144(n+1)`
-/

namespace A188011.P1347789844471554685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A123070 (n + 1)).toNat - A060144 (n + 1)

end

end A188011.P1347789844471554685

namespace A188011

/-- `A123070(A123070(n+1))-A060144(n+1)` -/
def P1347789844471554685.Spec : Prop :=
  ∀ n, P1347789844471554685.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P8181251465241722615

`A005713(comp[A001950(n+1)+2])`
-/

namespace A188011.P8181251465241722615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188011.P8181251465241722615

namespace A188011

/-- `A005713(comp[A001950(n+1)+2])` -/
def P8181251465241722615.Spec : Prop :=
  ∀ n, P8181251465241722615.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P12070485231895447782

`A188470(A002251(n+1))`
-/

namespace A188011.P12070485231895447782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (A002251 (n + 1)).toNat

end

end A188011.P12070485231895447782

namespace A188011

/-- `A188470(A002251(n+1))` -/
def P12070485231895447782.Spec : Prop :=
  ∀ n, P12070485231895447782.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P17219849338735610028

`A188467(A000201(n+1))`
-/

namespace A188011.P17219849338735610028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A000201 (n + 1)).toNat

end

end A188011.P17219849338735610028

namespace A188011

/-- `A188467(A000201(n+1))` -/
def P17219849338735610028.Spec : Prop :=
  ∀ n, P17219849338735610028.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P18234098849478522523

`A188470(A003258(n+1))`
-/

namespace A188011.P18234098849478522523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (A003258 (n + 1)).toNat

end

end A188011.P18234098849478522523

namespace A188011

/-- `A188470(A003258(n+1))` -/
def P18234098849478522523.Spec : Prop :=
  ∀ n, P18234098849478522523.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P4828962980893636404

`A188470(A004956(n+1))`
-/

namespace A188011.P4828962980893636404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (A004956 (n + 1)).toNat

end

end A188011.P4828962980893636404

namespace A188011

/-- `A188470(A004956(n+1))` -/
def P4828962980893636404.Spec : Prop :=
  ∀ n, P4828962980893636404.a n = A188011 (n + 1)

end A188011

/-! ## A188011.P17829301280695030127

`A188470(A007067(n+1))`
-/

namespace A188011.P17829301280695030127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (A007067 (n + 1)).toNat

end

end A188011.P17829301280695030127

namespace A188011

/-- `A188470(A007067(n+1))` -/
def P17829301280695030127.Spec : Prop :=
  ∀ n, P17829301280695030127.a n = A188011 (n + 1)

end A188011

/-!
# A188012: Positions of 0 in A188011; complement of A188013.

The programs for A188012, the canonical program `A188012.P704335326196897509` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188012 has offset 1).

The definition of A188012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188012.P704335326196897509

`3*floor(n*ϕ)+2*n+3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188012

/-- `3*floor(n*ϕ)+2*n+3` -/
def P704335326196897509.Spec : Prop :=
  ∀ n, P704335326196897509.a n = A188012 (n + 1)

theorem P704335326196897509.correct : P704335326196897509.Spec := by
  intro n
  simp only [A188012, Nat.add_sub_cancel]

end A188012

/-! ## A188012.P18181808902339375595

`A188026(n+1)%A188471(n+1)`
-/

namespace A188012.P18181808902339375595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188026 (n + 1)) (A188471 (n + 1))

end

end A188012.P18181808902339375595

namespace A188012

/-- `A188026(n+1)%A188471(n+1)` -/
def P18181808902339375595.Spec : Prop :=
  ∀ n, P18181808902339375595.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P4325846066500152624

`A000027(A188434(n+1)+A026352(n))`
-/

namespace A188012.P4325846066500152624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A188434 (n + 1) + A026352 n).toNat

end

end A188012.P4325846066500152624

namespace A188012

/-- `A000027(A188434(n+1)+A026352(n))` -/
def P4325846066500152624.Spec : Prop :=
  ∀ n, P4325846066500152624.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P2961687470275763934

`(A188434(n+1)+A026352(n))*A000041(gcd(n, n+1))`
-/

namespace A188012.P2961687470275763934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188434 (n + 1) + A026352 n) * A000041 (Nat.gcd n (n + 1))

end

end A188012.P2961687470275763934

namespace A188012

/-- `(A188434(n+1)+A026352(n))*A000041(gcd(n, n+1))` -/
def P2961687470275763934.Spec : Prop :=
  ∀ n, P2961687470275763934.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P1868483685274556893

`A003623(A026351(n))`
-/

namespace A188012.P1868483685274556893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A026351 n).toNat

end

end A188012.P1868483685274556893

namespace A188012

/-- `A003623(A026351(n))` -/
def P1868483685274556893.Spec : Prop :=
  ∀ n, P1868483685274556893.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P7955164250229904653

`A003623(A066096(n)+1)`
-/

namespace A188012.P7955164250229904653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A066096 n + 1).toNat

end

end A188012.P7955164250229904653

namespace A188012

/-- `A003623(A066096(n)+1)` -/
def P7955164250229904653.Spec : Prop :=
  ∀ n, P7955164250229904653.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P7329848182428496409

`A003623(A026352(n)-n)`
-/

namespace A188012.P7329848182428496409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A026352 n - (n : ℤ)).toNat

end

end A188012.P7329848182428496409

namespace A188012

/-- `A003623(A026352(n)-n)` -/
def P7329848182428496409.Spec : Prop :=
  ∀ n, P7329848182428496409.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P10138273702837689136

`A003623(A060143(n)+1+n)`
-/

namespace A188012.P10138273702837689136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A060143 n + 1 + (n : ℤ)).toNat

end

end A188012.P10138273702837689136

namespace A188012

/-- `A003623(A060143(n)+1+n)` -/
def P10138273702837689136.Spec : Prop :=
  ∀ n, P10138273702837689136.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P9543671498279080349

`A003623(A026356(n+1)-(n+1))`
-/

namespace A188012.P9543671498279080349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A026356 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188012.P9543671498279080349

namespace A188012

/-- `A003623(A026356(n+1)-(n+1))` -/
def P9543671498279080349.Spec : Prop :=
  ∀ n, P9543671498279080349.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P11257080129656982315

`A003623(2*n+1-A189663(n+1))`
-/

namespace A188012.P11257080129656982315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 ((2 * n + 1 : ℤ) - A189663 (n + 1)).toNat

end

end A188012.P11257080129656982315

namespace A188012

/-- `A003623(2*n+1-A189663(n+1))` -/
def P11257080129656982315.Spec : Prop :=
  ∀ n, P11257080129656982315.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P11601022144142165906

`A188473(A004277(n))`
-/

namespace A188012.P11601022144142165906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (A004277 n).toNat

end

end A188012.P11601022144142165906

namespace A188012

/-- `A188473(A004277(n))` -/
def P11601022144142165906.Spec : Prop :=
  ∀ n, P11601022144142165906.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P17360595852253517573

`A188473(A004275(n+1))`
-/

namespace A188012.P17360595852253517573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (A004275 (n + 1)).toNat

end

end A188012.P17360595852253517573

namespace A188012

/-- `A188473(A004275(n+1))` -/
def P17360595852253517573.Spec : Prop :=
  ∀ n, P17360595852253517573.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P17554605774821849375

`A188018(Δ[n²])`
-/

namespace A188012.P17554605774821849375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188012.P17554605774821849375

namespace A188012

/-- `A188018(Δ[n²])` -/
def P17554605774821849375.Spec : Prop :=
  ∀ n, P17554605774821849375.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P8762292994156817704

`A188217(Δ[n²])`
-/

namespace A188012.P8762292994156817704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188012.P8762292994156817704

namespace A188012

/-- `A188217(Δ[n²])` -/
def P8762292994156817704.Spec : Prop :=
  ∀ n, P8762292994156817704.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P15332107793241698593

`A003623(A188010(2*n+1)-n)`
-/

namespace A188012.P15332107793241698593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A188010 (2 * n + 1) - (n : ℤ)).toNat

end

end A188012.P15332107793241698593

namespace A188012

/-- `A003623(A188010(2*n+1)-n)` -/
def P15332107793241698593.Spec : Prop :=
  ∀ n, P15332107793241698593.a n = A188012 (n + 1)

end A188012

/-! ## A188012.P4936535912396766496

`∩[A003234(n+1), A188217(n+1)]`
-/

namespace A188012.P4936535912396766496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188012.P4936535912396766496

namespace A188012

/-- `∩[A003234(n+1), A188217(n+1)]` -/
def P4936535912396766496.Spec : Prop :=
  ∀ n, (P4936535912396766496.a n : ℤ) = A188012 (n + 1)

end A188012

/-! ## A188012.P11831185281294320201

`∩[A003623(n+1), A188217(n+1)]`
-/

namespace A188012.P11831185281294320201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188012.P11831185281294320201

namespace A188012

/-- `∩[A003623(n+1), A188217(n+1)]` -/
def P11831185281294320201.Spec : Prop :=
  ∀ n, (P11831185281294320201.a n : ℤ) = A188012 (n + 1)

end A188012

/-! ## A188012.P12396126799572372799

`∩[A188032(n+1), A188217(n+1)]`
-/

namespace A188012.P12396126799572372799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188012.P12396126799572372799

namespace A188012

/-- `∩[A188032(n+1), A188217(n+1)]` -/
def P12396126799572372799.Spec : Prop :=
  ∀ n, (P12396126799572372799.a n : ℤ) = A188012 (n + 1)

end A188012

/-! ## A188012.P7665177113341312790

`∩[A190450(n+1), A188217(n+1)]`
-/

namespace A188012.P7665177113341312790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188012.P7665177113341312790

namespace A188012

/-- `∩[A190450(n+1), A188217(n+1)]` -/
def P7665177113341312790.Spec : Prop :=
  ∀ n, (P7665177113341312790.a n : ℤ) = A188012 (n + 1)

end A188012

/-!
# A188013: Positions of 1 in A188011; complement of A188012.

The programs for A188013, the canonical program `A188013.P5416462943945789149` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188013 has offset 1).

The definition of A188013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188013.P17998709814121319412

`comp[A188018(2*n+1)-1]+1`
-/

namespace A188013.P17998709814121319412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188013.P17998709814121319412

namespace A188013

/-- `comp[A188018(2*n+1)-1]+1` -/
def P17998709814121319412.Spec : Prop :=
  ∀ n, (P17998709814121319412.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P5416462943945789149

`comp[3*n+A285679(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188013

/-- `comp[3*n+A285679(n+1)-1]+1` -/
def P5416462943945789149.Spec : Prop :=
  ∀ n, (P5416462943945789149.a n : ℤ) = A188013 (n + 1)

theorem P5416462943945789149.correct : P5416462943945789149.Spec := by
  intro n
  simp only [A188013, Nat.add_sub_cancel]

end A188013

/-! ## A188013.P3458535129130092075

`A005206(A188469(n+1))`
-/

namespace A188013.P3458535129130092075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188469 (n + 1)).toNat

end

end A188013.P3458535129130092075

namespace A188013

/-- `A005206(A188469(n+1))` -/
def P3458535129130092075.Spec : Prop :=
  ∀ n, P3458535129130092075.a n = A188013 (n + 1)

end A188013

/-! ## A188013.P17031867258956622884

`comp[A001950(A026352(n))]+1`
-/

namespace A188013.P17031867258956622884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026352 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188013.P17031867258956622884

namespace A188013

/-- `comp[A001950(A026352(n))]+1` -/
def P17031867258956622884.Spec : Prop :=
  ∀ n, (P17031867258956622884.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P798999757772829915

`∪[A047924(n+1), A026351(n)]`
-/

namespace A188013.P798999757772829915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P798999757772829915

namespace A188013

/-- `∪[A047924(n+1), A026351(n)]` -/
def P798999757772829915.Spec : Prop :=
  ∀ n, (P798999757772829915.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P18106045921037517904

`∪[A188218(n+1), A026351(n)]`
-/

namespace A188013.P18106045921037517904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P18106045921037517904

namespace A188013

/-- `∪[A188218(n+1), A026351(n)]` -/
def P18106045921037517904.Spec : Prop :=
  ∀ n, (P18106045921037517904.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P18366362114978079839

`comp[A003623(n+1)*A114986(n)]`
-/

namespace A188013.P18366362114978079839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) * A114986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188013.P18366362114978079839

namespace A188013

/-- `comp[A003623(n+1)*A114986(n)]` -/
def P18366362114978079839.Spec : Prop :=
  ∀ n, (P18366362114978079839.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P14478720179905485161

`A188025(n+1)-A188469(n+1)`
-/

namespace A188013.P14478720179905485161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) - A188469 (n + 1)

end

end A188013.P14478720179905485161

namespace A188013

/-- `A188025(n+1)-A188469(n+1)` -/
def P14478720179905485161.Spec : Prop :=
  ∀ n, P14478720179905485161.a n = A188013 (n + 1)

end A188013

/-! ## A188013.P4848741046169758695

`∪[A003233(n+1), A188218(n+1)]`
-/

namespace A188013.P4848741046169758695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P4848741046169758695

namespace A188013

/-- `∪[A003233(n+1), A188218(n+1)]` -/
def P4848741046169758695.Spec : Prop :=
  ∀ n, (P4848741046169758695.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P3156010659634026380

`∪[A005653(n+1), A188218(n+1)]`
-/

namespace A188013.P3156010659634026380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P3156010659634026380

namespace A188013

/-- `∪[A005653(n+1), A188218(n+1)]` -/
def P3156010659634026380.Spec : Prop :=
  ∀ n, (P3156010659634026380.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P5108579216323869814

`∪[A007064(n+1), A188218(n+1)]`
-/

namespace A188013.P5108579216323869814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P5108579216323869814

namespace A188013

/-- `∪[A007064(n+1), A188218(n+1)]` -/
def P5108579216323869814.Spec : Prop :=
  ∀ n, (P5108579216323869814.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P5209330013285860712

`∪[A007066(n+1), A188218(n+1)]`
-/

namespace A188013.P5209330013285860712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P5209330013285860712

namespace A188013

/-- `∪[A007066(n+1), A188218(n+1)]` -/
def P5209330013285860712.Spec : Prop :=
  ∀ n, (P5209330013285860712.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P5430319375039128710

`∪[A007073(n+1), A188218(n+1)]`
-/

namespace A188013.P5430319375039128710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P5430319375039128710

namespace A188013

/-- `∪[A007073(n+1), A188218(n+1)]` -/
def P5430319375039128710.Spec : Prop :=
  ∀ n, (P5430319375039128710.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P9836802488784026572

`∪[A007074(n+1), A188218(n+1)]`
-/

namespace A188013.P9836802488784026572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P9836802488784026572

namespace A188013

/-- `∪[A007074(n+1), A188218(n+1)]` -/
def P9836802488784026572.Spec : Prop :=
  ∀ n, (P9836802488784026572.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P17940463966026273888

`∪[A026273(n+1), A188218(n+1)]`
-/

namespace A188013.P17940463966026273888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P17940463966026273888

namespace A188013

/-- `∪[A026273(n+1), A188218(n+1)]` -/
def P17940463966026273888.Spec : Prop :=
  ∀ n, (P17940463966026273888.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P11102700810349807330

`∪[A188191(n+1)+1, A026351(n)]`
-/

namespace A188013.P11102700810349807330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188191 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P11102700810349807330

namespace A188013

/-- `∪[A188191(n+1)+1, A026351(n)]` -/
def P11102700810349807330.Spec : Prop :=
  ∀ n, (P11102700810349807330.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P11894464812653091931

`∪[A026356(n+1), A188218(n+1)]`
-/

namespace A188013.P11894464812653091931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P11894464812653091931

namespace A188013

/-- `∪[A026356(n+1), A188218(n+1)]` -/
def P11894464812653091931.Spec : Prop :=
  ∀ n, (P11894464812653091931.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P10876628321404349035

`∪[A080746(n+1), A188218(n+1)]`
-/

namespace A188013.P10876628321404349035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P10876628321404349035

namespace A188013

/-- `∪[A080746(n+1), A188218(n+1)]` -/
def P10876628321404349035.Spec : Prop :=
  ∀ n, (P10876628321404349035.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P5166917326325663371

`∪[A089960(n+1), A188218(n+1)]`
-/

namespace A188013.P5166917326325663371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P5166917326325663371

namespace A188013

/-- `∪[A089960(n+1), A188218(n+1)]` -/
def P5166917326325663371.Spec : Prop :=
  ∀ n, (P5166917326325663371.a n : ℤ) = A188013 (n + 1)

end A188013

/-! ## A188013.P229994740855550880

`∪[A140399(n+1), A188218(n+1)]`
-/

namespace A188013.P229994740855550880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188013.P229994740855550880

namespace A188013

/-- `∪[A140399(n+1), A188218(n+1)]` -/
def P229994740855550880.Spec : Prop :=
  ∀ n, (P229994740855550880.a n : ℤ) = A188013 (n + 1)

end A188013

/-!
# A188014: a(n) = [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=4, [ ]=floor.

The programs for A188014, the canonical program `A188014.P7770926066487780213` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188014 has offset 1).

The definition of A188014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188014.P18083634284778651330

`char[A188016(n+1)-1]`
-/

namespace A188014.P18083634284778651330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188014.P18083634284778651330

namespace A188014

/-- `char[A188016(n+1)-1]` -/
def P18083634284778651330.Spec : Prop :=
  ∀ n, (P18083634284778651330.a n : ℤ) = A188014 (n + 1)

end A188014

/-! ## A188014.P13620424489113064996

`A097805(C(2, A356749(n)))`
-/

namespace A188014.P13620424489113064996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Nat.choose 2 (A356749 n).toNat)

end

end A188014.P13620424489113064996

namespace A188014

/-- `A097805(C(2, A356749(n)))` -/
def P13620424489113064996.Spec : Prop :=
  ∀ n, P13620424489113064996.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P4363734275669616543

`A132393(C(2, A356749(n)))`
-/

namespace A188014.P4363734275669616543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (Nat.choose 2 (A356749 n).toNat)

end

end A188014.P4363734275669616543

namespace A188014

/-- `A132393(C(2, A356749(n)))` -/
def P4363734275669616543.Spec : Prop :=
  ∀ n, P4363734275669616543.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P16745080464511781387

`A267871(n)-A188467(n+1)`
-/

namespace A188014.P16745080464511781387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n - A188467 (n + 1)

end

end A188014.P16745080464511781387

namespace A188014

/-- `A267871(n)-A188467(n+1)` -/
def P16745080464511781387.Spec : Prop :=
  ∀ n, P16745080464511781387.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P7770926066487780213

`A289034(A287523(n+1)+∑[A287523(n+1)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188014

/-- `A289034(A287523(n+1)+∑[A287523(n+1)])` -/
def P7770926066487780213.Spec : Prop :=
  ∀ n, P7770926066487780213.a n = A188014 (n + 1)

theorem P7770926066487780213.correct : P7770926066487780213.Spec := by
  intro n
  simp only [A188014, Nat.add_sub_cancel]

end A188014

/-! ## A188014.P10208151499109238658

`char[A001950(A188435(n+1))-A188435(n+1)]`
-/

namespace A188014.P10208151499109238658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A188435 (n + 1)).toNat - A188435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188014.P10208151499109238658

namespace A188014

/-- `char[A001950(A188435(n+1))-A188435(n+1)]` -/
def P10208151499109238658.Spec : Prop :=
  ∀ n, (P10208151499109238658.a n : ℤ) = A188014 (n + 1)

end A188014

/-! ## A188014.P1408893684098900162

`A123070(A005206(n))-A060144(n+1)`
-/

namespace A188014.P1408893684098900162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A005206 n).toNat - A060144 (n + 1)

end

end A188014.P1408893684098900162

namespace A188014

/-- `A123070(A005206(n))-A060144(n+1)` -/
def P1408893684098900162.Spec : Prop :=
  ∀ n, P1408893684098900162.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P12246961084432389241

`A123070(A123070(n))-A060144(n+1)`
-/

namespace A188014.P12246961084432389241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A123070 n).toNat - A060144 (n + 1)

end

end A188014.P12246961084432389241

namespace A188014

/-- `A123070(A123070(n))-A060144(n+1)` -/
def P12246961084432389241.Spec : Prop :=
  ∀ n, P12246961084432389241.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P18273188329739983692

`A289034(A287523(n+1)+A101803(n+1))`
-/

namespace A188014.P18273188329739983692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A287523 (n + 1) + A101803 (n + 1)).toNat

end

end A188014.P18273188329739983692

namespace A188014

/-- `A289034(A287523(n+1)+A101803(n+1))` -/
def P18273188329739983692.Spec : Prop :=
  ∀ n, P18273188329739983692.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P1386488881634447224

`A188017(n+1)*A188017(n+3)`
-/

namespace A188014.P1386488881634447224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (n + 1) * A188017 (n + 3)

end

end A188014.P1386488881634447224

namespace A188014

/-- `A188017(n+1)*A188017(n+3)` -/
def P1386488881634447224.Spec : Prop :=
  ∀ n, P1386488881634447224.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P5181579644728000741

`A096270(n*A188470(A026351(n)))`
-/

namespace A188014.P5181579644728000741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) * A188470 (A026351 n).toNat).toNat

end

end A188014.P5181579644728000741

namespace A188014

/-- `A096270(n*A188470(A026351(n)))` -/
def P5181579644728000741.Spec : Prop :=
  ∀ n, P5181579644728000741.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P10069564244678382723

`A188472(A000201(n+1))`
-/

namespace A188014.P10069564244678382723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A000201 (n + 1)).toNat

end

end A188014.P10069564244678382723

namespace A188014

/-- `A188472(A000201(n+1))` -/
def P10069564244678382723.Spec : Prop :=
  ∀ n, P10069564244678382723.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P17793739573470406079

`A188472(A002251(n)+1)`
-/

namespace A188014.P17793739573470406079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A002251 n + 1).toNat

end

end A188014.P17793739573470406079

namespace A188014

/-- `A188472(A002251(n)+1)` -/
def P17793739573470406079.Spec : Prop :=
  ∀ n, P17793739573470406079.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P17459970852532749514

`A188472(A007067(n+1))`
-/

namespace A188014.P17459970852532749514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A007067 (n + 1)).toNat

end

end A188014.P17459970852532749514

namespace A188014

/-- `A188472(A007067(n+1))` -/
def P17459970852532749514.Spec : Prop :=
  ∀ n, P17459970852532749514.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P7992929742637241202

`A188472(A019444(n+1))`
-/

namespace A188014.P7992929742637241202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A019444 (n + 1)).toNat

end

end A188014.P7992929742637241202

namespace A188014

/-- `A188472(A019444(n+1))` -/
def P7992929742637241202.Spec : Prop :=
  ∀ n, P7992929742637241202.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P6064228102035715268

`A188472(A026355(n+1))`
-/

namespace A188014.P6064228102035715268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A026355 (n + 1)).toNat

end

end A188014.P6064228102035715268

namespace A188014

/-- `A188472(A026355(n+1))` -/
def P6064228102035715268.Spec : Prop :=
  ∀ n, P6064228102035715268.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P94410836247146013

`A188472(A058065(n+1))`
-/

namespace A188014.P94410836247146013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A058065 (n + 1)).toNat

end

end A188014.P94410836247146013

namespace A188014

/-- `A188472(A058065(n+1))` -/
def P94410836247146013.Spec : Prop :=
  ∀ n, P94410836247146013.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P17199360669027128400

`A188472(A066096(n+1))`
-/

namespace A188014.P17199360669027128400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A066096 (n + 1)).toNat

end

end A188014.P17199360669027128400

namespace A188014

/-- `A188472(A066096(n+1))` -/
def P17199360669027128400.Spec : Prop :=
  ∀ n, P17199360669027128400.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P6884703401719746670

`A188472(A099267(n+1))`
-/

namespace A188014.P6884703401719746670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A099267 (n + 1)).toNat

end

end A188014.P6884703401719746670

namespace A188014

/-- `A188472(A099267(n+1))` -/
def P6884703401719746670.Spec : Prop :=
  ∀ n, P6884703401719746670.a n = A188014 (n + 1)

end A188014

/-! ## A188014.P14420279444558339170

`A188472(A184582(n+1))`
-/

namespace A188014.P14420279444558339170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (A184582 (n + 1)).toNat

end

end A188014.P14420279444558339170

namespace A188014

/-- `A188472(A184582(n+1))` -/
def P14420279444558339170.Spec : Prop :=
  ∀ n, P14420279444558339170.a n = A188014 (n + 1)

end A188014

/-!
# A188015: Positions of 0 in A188014; complement of A188016.

The programs for A188015, the canonical program `A188015.P4944563327904613526` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188015 has offset 1).

The definition of A188015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188015.P15885381481708081122

`floor(ϕ*A188437(n+1))`
-/

namespace A188015.P15885381481708081122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188437 (n + 1) : ℝ)⌋

end

end A188015.P15885381481708081122

namespace A188015

/-- `floor(ϕ*A188437(n+1))` -/
def P15885381481708081122.Spec : Prop :=
  ∀ n, P15885381481708081122.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P4944563327904613526

`comp[A188016(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188015

/-- `comp[A188016(n+1)-1]+1` -/
def P4944563327904613526.Spec : Prop :=
  ∀ n, (P4944563327904613526.a n : ℤ) = A188015 (n + 1)

theorem P4944563327904613526.correct : P4944563327904613526.Spec := by
  intro n
  simp only [A188015, Nat.add_sub_cancel]

end A188015

/-! ## A188015.P2321094070084533526

`∪[A002878(n), A188469(n+1)]`
-/

namespace A188015.P2321094070084533526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188015.P2321094070084533526

namespace A188015

/-- `∪[A002878(n), A188469(n+1)]` -/
def P2321094070084533526.Spec : Prop :=
  ∀ n, (P2321094070084533526.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P1863144447244005796

`∪[A026356(n+1)+2, A026352(n)]`
-/

namespace A188015.P1863144447244005796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188015.P1863144447244005796

namespace A188015

/-- `∪[A026356(n+1)+2, A026352(n)]` -/
def P1863144447244005796.Spec : Prop :=
  ∀ n, (P1863144447244005796.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P10788226901073989419

`∪[A188018(n+1)-2, A188018(n+1)]`
-/

namespace A188015.P10788226901073989419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188015.P10788226901073989419

namespace A188015

/-- `∪[A188018(n+1)-2, A188018(n+1)]` -/
def P10788226901073989419.Spec : Prop :=
  ∀ n, (P10788226901073989419.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P795531789093861360

`A000201(A188437(n+1))`
-/

namespace A188015.P795531789093861360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188437 (n + 1)).toNat

end

end A188015.P795531789093861360

namespace A188015

/-- `A000201(A188437(n+1))` -/
def P795531789093861360.Spec : Prop :=
  ∀ n, P795531789093861360.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P10628901314516822369

`A004956(A188437(n+1))-A000108(ceil(1/(n+1)))`
-/

namespace A188015.P10628901314516822369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A188437 (n + 1)).toNat - A000108 ⌈1 / (n + 1 : ℚ)⌉.toNat

end

end A188015.P10628901314516822369

namespace A188015

/-- `A004956(A188437(n+1))-A000108(ceil(1/(n+1)))` -/
def P10628901314516822369.Spec : Prop :=
  ∀ n, P10628901314516822369.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P13737116740607417305

`lt[n*A188014(A028310(n)), n]`
-/

namespace A188015.P13737116740607417305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188014 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188015.P13737116740607417305

namespace A188015

/-- `lt[n*A188014(A028310(n)), n]` -/
def P13737116740607417305.Spec : Prop :=
  ∀ n, (P13737116740607417305.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P15600955379561712434

`record[n-A078024(A083368(n+1))]`
-/

namespace A188015.P15600955379561712434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A078024 (A083368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188015.P15600955379561712434

namespace A188015

/-- `record[n-A078024(A083368(n+1))]` -/
def P15600955379561712434.Spec : Prop :=
  ∀ n, P15600955379561712434.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P7106417911966505047

`lt[char[A188016(n+1)], A096270(n)]`
-/

namespace A188015.P7106417911966505047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A188015.P7106417911966505047

namespace A188015

/-- `lt[char[A188016(n+1)], A096270(n)]` -/
def P7106417911966505047.Spec : Prop :=
  ∀ n, (P7106417911966505047.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P17150191334092428432

`record[n+1-A188014(n+1)*A261585(n)]`
-/

namespace A188015.P17150191334092428432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188014 (n + 1) * A261585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188015.P17150191334092428432

namespace A188015

/-- `record[n+1-A188014(n+1)*A261585(n)]` -/
def P17150191334092428432.Spec : Prop :=
  ∀ n, P17150191334092428432.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P11441838001053369449

`lt[A188014(A028310(n)), A096270(n)]`
-/

namespace A188015.P11441838001053369449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188015.P11441838001053369449

namespace A188015

/-- `lt[A188014(A028310(n)), A096270(n)]` -/
def P11441838001053369449.Spec : Prop :=
  ∀ n, (P11441838001053369449.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P15418459005765559122

`A004956(A188437(n+1))-char[A014681(n)]`
-/

namespace A188015.P15418459005765559122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A188437 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188015.P15418459005765559122

namespace A188015

/-- `A004956(A188437(n+1))-char[A014681(n)]` -/
def P15418459005765559122.Spec : Prop :=
  ∀ n, P15418459005765559122.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P14537373853358255416

`lt[A188436(A002251(n+1)), A096270(n)]`
-/

namespace A188015.P14537373853358255416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (A002251 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188015.P14537373853358255416

namespace A188015

/-- `lt[A188436(A002251(n+1)), A096270(n)]` -/
def P14537373853358255416.Spec : Prop :=
  ∀ n, (P14537373853358255416.a n : ℤ) = A188015 (n + 1)

end A188015

/-! ## A188015.P15580862813748537062

`A188032(n+1)-A026272(A188032(n+1)-1)`
-/

namespace A188015.P15580862813748537062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1) - A026272 (A188032 (n + 1) - 1).toNat

end

end A188015.P15580862813748537062

namespace A188015

/-- `A188032(n+1)-A026272(A188032(n+1)-1)` -/
def P15580862813748537062.Spec : Prop :=
  ∀ n, P15580862813748537062.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P1461601556395755904

`A026272(A188032(n+1))`
-/

namespace A188015.P1461601556395755904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A188032 (n + 1)).toNat

end

end A188015.P1461601556395755904

namespace A188015

/-- `A026272(A188032(n+1))` -/
def P1461601556395755904.Spec : Prop :=
  ∀ n, P1461601556395755904.a n = A188015 (n + 1)

end A188015

/-! ## A188015.P9023420338053250480

`record[A022290(A109613(A052499(n)))]`
-/

namespace A188015.P9023420338053250480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A109613 (A052499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188015.P9023420338053250480

namespace A188015

/-- `record[A022290(A109613(A052499(n)))]` -/
def P9023420338053250480.Spec : Prop :=
  ∀ n, P9023420338053250480.a n = A188015 (n + 1)

end A188015

/-!
# A188016: Positions of 1 in A188014; complement of A188015.

The programs for A188016, the canonical program `A188016.P8834039496715161497` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188016 has offset 1).

The definition of A188016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188016.P12472258341534324359

`ceil(ϕ*ceil(∑[ϕ^(n%2)]))`
-/

namespace A188016.P12472258341534324359
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℝ)⌉

end

end A188016.P12472258341534324359

namespace A188016

/-- `ceil(ϕ*ceil(∑[ϕ^(n%2)]))` -/
def P12472258341534324359.Spec : Prop :=
  ∀ n, P12472258341534324359.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P4012240745035998111

`ceil(ϕ*ceil(∑[ϕ/a(n-1)]))` with `a(0)=1`
-/

namespace A188016.P4012240745035998111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℝ)⌉

end

end A188016.P4012240745035998111

namespace A188016

/-- `ceil(ϕ*ceil(∑[ϕ/a(n-1)]))` -/
def P4012240745035998111.Spec : Prop :=
  ∀ n, P4012240745035998111.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P4172949787346219935

`ceil(ϕ*ceil(∑[ϕ²-a(n-1)]))` with `a(0)=1`
-/

namespace A188016.P4172949787346219935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℝ)⌉

end

end A188016.P4172949787346219935

namespace A188016

/-- `ceil(ϕ*ceil(∑[ϕ²-a(n-1)]))` -/
def P4172949787346219935.Spec : Prop :=
  ∀ n, P4172949787346219935.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P14619381309260072396

`ceil(ϕ*A188435(n+1))`
-/

namespace A188016.P14619381309260072396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A188435 (n + 1) : ℝ)⌉

end

end A188016.P14619381309260072396

namespace A188016

/-- `ceil(ϕ*A188435(n+1))` -/
def P14619381309260072396.Spec : Prop :=
  ∀ n, P14619381309260072396.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P5620816088776562783

`round(A188473(n+1)/ϕ)`
-/

namespace A188016.P5620816088776562783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A188473 (n + 1) : ℝ) / Real.goldenRatio)

end

end A188016.P5620816088776562783

namespace A188016

/-- `round(A188473(n+1)/ϕ)` -/
def P5620816088776562783.Spec : Prop :=
  ∀ n, P5620816088776562783.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P7320619326041455853

`A188030(n+1)-A188473(n+1)`
-/

namespace A188016.P7320619326041455853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (n + 1) - A188473 (n + 1)

end

end A188016.P7320619326041455853

namespace A188016

/-- `A188030(n+1)-A188473(n+1)` -/
def P7320619326041455853.Spec : Prop :=
  ∀ n, P7320619326041455853.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P11610274753297331789

`A188473(n+1)-A188435(n+1)`
-/

namespace A188016.P11610274753297331789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) - A188435 (n + 1)

end

end A188016.P11610274753297331789

namespace A188016

/-- `A188473(n+1)-A188435(n+1)` -/
def P11610274753297331789.Spec : Prop :=
  ∀ n, P11610274753297331789.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P8834039496715161497

`2*A188435(n+1)-A110654(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188016

/-- `2*A188435(n+1)-A110654(n)` -/
def P8834039496715161497.Spec : Prop :=
  ∀ n, P8834039496715161497.a n = A188016 (n + 1)

theorem P8834039496715161497.correct : P8834039496715161497.Spec := by
  intro n
  simp only [A188016, Nat.add_sub_cancel]

end A188016

/-! ## A188016.P15058051239669770933

`A188468(A065475(n+1))`
-/

namespace A188016.P15058051239669770933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (A065475 (n + 1)).toNat

end

end A188016.P15058051239669770933

namespace A188016

/-- `A188468(A065475(n+1))` -/
def P15058051239669770933.Spec : Prop :=
  ∀ n, P15058051239669770933.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P2614988738437596957

`A188468(A181440(n+2))`
-/

namespace A188016.P2614988738437596957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (A181440 (n + 2)).toNat

end

end A188016.P2614988738437596957

namespace A188016

/-- `A188468(A181440(n+2))` -/
def P2614988738437596957.Spec : Prop :=
  ∀ n, P2614988738437596957.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P1900413108112664545

`A188468(A184985(n+2))`
-/

namespace A188016.P1900413108112664545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (A184985 (n + 2)).toNat

end

end A188016.P1900413108112664545

namespace A188016

/-- `A188468(A184985(n+2))` -/
def P1900413108112664545.Spec : Prop :=
  ∀ n, P1900413108112664545.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P12449087149780782150

`A188473(n+1)/A188018(n+2)*A188468(n+2)`
-/

namespace A188016.P12449087149780782150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188473 (n + 1) : ℚ) / (A188018 (n + 2) : ℚ) * (A188468 (n + 2) : ℚ)

end

end A188016.P12449087149780782150

namespace A188016

/-- `A188473(n+1)/A188018(n+2)*A188468(n+2)` -/
def P12449087149780782150.Spec : Prop :=
  ∀ n, P12449087149780782150.a n = (A188016 (n + 1) : ℚ)

end A188016

/-! ## A188016.P7708437382599514251

`A004956(A188435(n+1))`
-/

namespace A188016.P7708437382599514251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A188435 (n + 1)).toNat

end

end A188016.P7708437382599514251

namespace A188016

/-- `A004956(A188435(n+1))` -/
def P7708437382599514251.Spec : Prop :=
  ∀ n, P7708437382599514251.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P6408889480998719471

`A005843(A188435(n+1))-A110654(n)`
-/

namespace A188016.P6408889480998719471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A188435 (n + 1)).toNat - A110654 n

end

end A188016.P6408889480998719471

namespace A188016

/-- `A005843(A188435(n+1))-A110654(n)` -/
def P6408889480998719471.Spec : Prop :=
  ∀ n, P6408889480998719471.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P13649600549150611748

`A000201(∪[A000201(n+1), A007066(n+1)])+1`
-/

namespace A188016.P13649600549150611748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A188016.P13649600549150611748

namespace A188016

/-- `A000201(∪[A000201(n+1), A007066(n+1)])+1` -/
def P13649600549150611748.Spec : Prop :=
  ∀ n, P13649600549150611748.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P6512198301885444589

`A189662(A188435(n+1)+1)-1`
-/

namespace A188016.P6512198301885444589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A188435 (n + 1) + 1).toNat - 1

end

end A188016.P6512198301885444589

namespace A188016

/-- `A189662(A188435(n+1)+1)-1` -/
def P6512198301885444589.Spec : Prop :=
  ∀ n, P6512198301885444589.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P6931641136870018039

`∩[A026277(n+1), A188468(n+1)]`
-/

namespace A188016.P6931641136870018039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188016.P6931641136870018039

namespace A188016

/-- `∩[A026277(n+1), A188468(n+1)]` -/
def P6931641136870018039.Spec : Prop :=
  ∀ n, (P6931641136870018039.a n : ℤ) = A188016 (n + 1)

end A188016

/-! ## A188016.P14629036623571037753

`∩[A188019(n+1)-2, A188019(n+1)]`
-/

namespace A188016.P14629036623571037753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188016.P14629036623571037753

namespace A188016

/-- `∩[A188019(n+1)-2, A188019(n+1)]` -/
def P14629036623571037753.Spec : Prop :=
  ∀ n, (P14629036623571037753.a n : ℤ) = A188016 (n + 1)

end A188016

/-! ## A188016.P14650898378728522472

`A026351(comp[A026351(n)*A189661(n+1)])`
-/

namespace A188016.P14650898378728522472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n * A189661 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188016.P14650898378728522472

namespace A188016

/-- `A026351(comp[A026351(n)*A189661(n+1)])` -/
def P14650898378728522472.Spec : Prop :=
  ∀ n, P14650898378728522472.a n = A188016 (n + 1)

end A188016

/-! ## A188016.P8709954517402311846

`A005206(A188473(n+1))`
-/

namespace A188016.P8709954517402311846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188473 (n + 1)).toNat

end

end A188016.P8709954517402311846

namespace A188016

/-- `A005206(A188473(n+1))` -/
def P8709954517402311846.Spec : Prop :=
  ∀ n, P8709954517402311846.a n = A188016 (n + 1)

end A188016

/-!
# A188017: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=6, [ ]=floor.

The programs for A188017, the canonical program `A188017.P1836281172235948211` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188017 has offset 1).

The definition of A188017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188017.P15406618935853671710

`A096270(A188020(n+2)+n)`
-/

namespace A188017.P15406618935853671710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A188020 (n + 2) + (n : ℤ)).toNat

end

end A188017.P15406618935853671710

namespace A188017

/-- `A096270(A188020(n+2)+n)` -/
def P15406618935853671710.Spec : Prop :=
  ∀ n, P15406618935853671710.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P1692775815534299947

`A114986(A188020(n+2)+n)`
-/

namespace A188017.P1692775815534299947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A188020 (n + 2) + (n : ℤ)).toNat

end

end A188017.P1692775815534299947

namespace A188017

/-- `A114986(A188020(n+2)+n)` -/
def P1692775815534299947.Spec : Prop :=
  ∀ n, P1692775815534299947.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P1127593024232563416

`A188014(A188020(n+2)+n+1)`
-/

namespace A188017.P1127593024232563416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A188020 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188017.P1127593024232563416

namespace A188017

/-- `A188014(A188020(n+2)+n+1)` -/
def P1127593024232563416.Spec : Prop :=
  ∀ n, P1127593024232563416.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P1836281172235948211

`char[Δ[6*A060144(n)]+n]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188017

/-- `char[Δ[6*A060144(n)]+n]` -/
def P1836281172235948211.Spec : Prop :=
  ∀ n, (P1836281172235948211.a n : ℤ) = A188017 (n + 1)

theorem P1836281172235948211.correct : P1836281172235948211.Spec := by
  intro n
  simp only [A188017, Nat.add_sub_cancel]

end A188017

/-! ## A188017.P14689720435671963667

`A188034(A022419(n+1))`
-/

namespace A188017.P14689720435671963667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A022419 (n + 1)).toNat

end

end A188017.P14689720435671963667

namespace A188017

/-- `A188034(A022419(n+1))` -/
def P14689720435671963667.Spec : Prop :=
  ∀ n, P14689720435671963667.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P7730897812727646475

`and(A005713(n), A342715(n+2))`
-/

namespace A188017.P7730897812727646475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005713 n) (A342715 (n + 2))

end

end A188017.P7730897812727646475

namespace A188017

/-- `and(A005713(n), A342715(n+2))` -/
def P7730897812727646475.Spec : Prop :=
  ∀ n, P7730897812727646475.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P8604708200053116112

`A005614(A342715(n+2)+n+2)`
-/

namespace A188017.P8604708200053116112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A342715 (n + 2) + (n + 2 : ℤ)).toNat

end

end A188017.P8604708200053116112

namespace A188017

/-- `A005614(A342715(n+2)+n+2)` -/
def P8604708200053116112.Spec : Prop :=
  ∀ n, P8604708200053116112.a n = A188017 (n + 1)

end A188017

/-! ## A188017.P16735581472158226472

`A166946(A101863(n+1))`
-/

namespace A188017.P16735581472158226472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166946 (A101863 (n + 1)).toNat

end

end A188017.P16735581472158226472

namespace A188017

/-- `A166946(A101863(n+1))` -/
def P16735581472158226472.Spec : Prop :=
  ∀ n, P16735581472158226472.a n = A188017 (n + 1)

end A188017

/-!
# A188018: Positions of 0 in A188017; complement of A188019.

The programs for A188018, the canonical program `A188018.P1779164048503098880` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188018 has offset 1).

The definition of A188018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188018.P16914334603850231754

`floor(ϕ*A188468(n+1))`
-/

namespace A188018.P16914334603850231754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188468 (n + 1) : ℝ)⌋

end

end A188018.P16914334603850231754

namespace A188018

/-- `floor(ϕ*A188468(n+1))` -/
def P16914334603850231754.Spec : Prop :=
  ∀ n, P16914334603850231754.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P11289405255400534386

`A003622(comp[floor(ϕ*(n+1))+floor(ϕ*(n+1))+n+2]+1)+2`
-/

namespace A188018.P11289405255400534386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 2

end

end A188018.P11289405255400534386

namespace A188018

/-- `A003622(comp[floor(ϕ*(n+1))+floor(ϕ*(n+1))+n+2]+1)+2` -/
def P11289405255400534386.Spec : Prop :=
  ∀ n, P11289405255400534386.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P1779164048503098880

`A188468(n+1)+A188010(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188018

/-- `A188468(n+1)+A188010(n+1)` -/
def P1779164048503098880.Spec : Prop :=
  ∀ n, P1779164048503098880.a n = A188018 (n + 1)

theorem P1779164048503098880.correct : P1779164048503098880.Spec := by
  intro n
  simp only [A188018, Nat.add_sub_cancel]

end A188018

/-! ## A188018.P9055563251053466062

`A001950(comp[floor(ϕ*(n+1))+floor(ϕ*(n+1))+n+2]+1)+1`
-/

namespace A188018.P9055563251053466062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A188018.P9055563251053466062

namespace A188018

/-- `A001950(comp[floor(ϕ*(n+1))+floor(ϕ*(n+1))+n+2]+1)+1` -/
def P9055563251053466062.Spec : Prop :=
  ∀ n, P9055563251053466062.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P6586114589637251812

`A004957(A188010(n+1))`
-/

namespace A188018.P6586114589637251812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A188010 (n + 1)).toNat

end

end A188018.P6586114589637251812

namespace A188018

/-- `A004957(A188010(n+1))` -/
def P6586114589637251812.Spec : Prop :=
  ∀ n, P6586114589637251812.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P15050537706434661599

`A004957(comp[A022342(ceil(ϕ*n+1+n))])`
-/

namespace A188018.P15050537706434661599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 ⌈Real.goldenRatio * (n : ℝ) + 1 + (n : ℝ)⌉.toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188018.P15050537706434661599

namespace A188018

/-- `A004957(comp[A022342(ceil(ϕ*n+1+n))])` -/
def P15050537706434661599.Spec : Prop :=
  ∀ n, P15050537706434661599.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P2958357441258674673

`A026352(comp[A022342(ceil(ϕ*n+1+n))])`
-/

namespace A188018.P2958357441258674673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 ⌈Real.goldenRatio * (n : ℝ) + 1 + (n : ℝ)⌉.toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188018.P2958357441258674673

namespace A188018

/-- `A026352(comp[A022342(ceil(ϕ*n+1+n))])` -/
def P2958357441258674673.Spec : Prop :=
  ∀ n, P2958357441258674673.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P3069849481615960297

`A026352(∪[A026356(n+1), A026352(n)])`
-/

namespace A188018.P3069849481615960297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188018.P3069849481615960297

namespace A188018

/-- `A026352(∪[A026356(n+1), A026352(n)])` -/
def P3069849481615960297.Spec : Prop :=
  ∀ n, P3069849481615960297.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P2684705717742872264

`A026352(∪[A026352(n)+1, A026352(n)])`
-/

namespace A188018.P2684705717742872264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188018.P2684705717742872264

namespace A188018

/-- `A026352(∪[A026352(n)+1, A026352(n)])` -/
def P2684705717742872264.Spec : Prop :=
  ∀ n, P2684705717742872264.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P10595605191668706377

`∩[A188015(n+1)+2, A188015(n+1)]`
-/

namespace A188018.P10595605191668706377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188018.P10595605191668706377

namespace A188018

/-- `∩[A188015(n+1)+2, A188015(n+1)]` -/
def P10595605191668706377.Spec : Prop :=
  ∀ n, (P10595605191668706377.a n : ℤ) = A188018 (n + 1)

end A188018

/-! ## A188018.P2899577204377342964

`A000201(A188468(n+1))`
-/

namespace A188018.P2899577204377342964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188468 (n + 1)).toNat

end

end A188018.P2899577204377342964

namespace A188018

/-- `A000201(A188468(n+1))` -/
def P2899577204377342964.Spec : Prop :=
  ∀ n, P2899577204377342964.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P17573271855471506312

`A188024(A188010(n+1)+1+n)`
-/

namespace A188018.P17573271855471506312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188024 (A188010 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188018.P17573271855471506312

namespace A188018

/-- `A188024(A188010(n+1)+1+n)` -/
def P17573271855471506312.Spec : Prop :=
  ∀ n, P17573271855471506312.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P8744716417258974591

`A188435(2*A188010(n+1))`
-/

namespace A188018.P8744716417258974591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (2 * A188010 (n + 1)).toNat

end

end A188018.P8744716417258974591

namespace A188018

/-- `A188435(2*A188010(n+1))` -/
def P8744716417258974591.Spec : Prop :=
  ∀ n, P8744716417258974591.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P17262583565735506352

`A188010(2*A188010(n+1)+1)`
-/

namespace A188018.P17262583565735506352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (2 * A188010 (n + 1) + 1).toNat

end

end A188018.P17262583565735506352

namespace A188018

/-- `A188010(2*A188010(n+1)+1)` -/
def P17262583565735506352.Spec : Prop :=
  ∀ n, P17262583565735506352.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P7955948382065985508

`A188435(A188010(n+1)+A188010(n+1))`
-/

namespace A188018.P7955948382065985508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (A188010 (n + 1) + A188010 (n + 1)).toNat

end

end A188018.P7955948382065985508

namespace A188018

/-- `A188435(A188010(n+1)+A188010(n+1))` -/
def P7955948382065985508.Spec : Prop :=
  ∀ n, P7955948382065985508.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P11673701077219208523

`A188010(A188010(n+1)+A188010(n+1)+1)`
-/

namespace A188018.P11673701077219208523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (A188010 (n + 1) + (A188010 (n + 1) + 1)).toNat

end

end A188018.P11673701077219208523

namespace A188018

/-- `A188010(A188010(n+1)+A188010(n+1)+1)` -/
def P11673701077219208523.Spec : Prop :=
  ∀ n, P11673701077219208523.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P17976188877434045678

`A188468(n+1)+A004526(A188468(n+1)+A004526(n))`
-/

namespace A188018.P17976188877434045678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) + A004526 (A188468 (n + 1) + A004526 n).toNat

end

end A188018.P17976188877434045678

namespace A188018

/-- `A188468(n+1)+A004526(A188468(n+1)+A004526(n))` -/
def P17976188877434045678.Spec : Prop :=
  ∀ n, P17976188877434045678.a n = A188018 (n + 1)

end A188018

/-! ## A188018.P1086389827532016119

`eq[A188020(n+1), A392842(n+1)]`
-/

namespace A188018.P1086389827532016119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188018.P1086389827532016119

namespace A188018

/-- `eq[A188020(n+1), A392842(n+1)]` -/
def P1086389827532016119.Spec : Prop :=
  ∀ n, (P1086389827532016119.a n : ℤ) = A188018 (n + 1)

end A188018

/-! ## A188018.P141960964433516882

`lt[A329130(n), ∑[A188014(2*n+3)]]`
-/

namespace A188018.P141960964433516882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188018.P141960964433516882

namespace A188018

/-- `lt[A329130(n), ∑[A188014(2*n+3)]]` -/
def P141960964433516882.Spec : Prop :=
  ∀ n, (P141960964433516882.a n : ℤ) = A188018 (n + 1)

end A188018

/-!
# A188019: Positions of 1 in A188017; complement of A188018.

The programs for A188019, the canonical program `A188019.P17014770103561860153` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188019 has offset 1).

The definition of A188019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188019.P17014770103561860153

`comp[A188018(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188019

/-- `comp[A188018(n+1)-1]+1` -/
def P17014770103561860153.Spec : Prop :=
  ∀ n, (P17014770103561860153.a n : ℤ) = A188019 (n + 1)

theorem P17014770103561860153.correct : P17014770103561860153.Spec := by
  intro n
  simp only [A188019, Nat.add_sub_cancel]

end A188019

/-! ## A188019.P8256907733578109993

`comp[A004957(comp[A101868(n+1)])]`
-/

namespace A188019.P8256907733578109993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188019.P8256907733578109993

namespace A188019

/-- `comp[A004957(comp[A101868(n+1)])]` -/
def P8256907733578109993.Spec : Prop :=
  ∀ n, (P8256907733578109993.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P4260507342228163333

`comp[A001950(A188010(n+1))]+1`
-/

namespace A188019.P4260507342228163333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A188010 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188019.P4260507342228163333

namespace A188019

/-- `comp[A001950(A188010(n+1))]+1` -/
def P4260507342228163333.Spec : Prop :=
  ∀ n, (P4260507342228163333.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P11549523962102085386

`filter[n+1, A188017(#)]`
-/

namespace A188019.P11549523962102085386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188017 (f1 j) = 1) n)

end

end A188019.P11549523962102085386

namespace A188019

/-- `filter[n+1, A188017(#)]` -/
def P11549523962102085386.Spec : Prop :=
  ∀ n, (P11549523962102085386.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P4467304881220036572

`record[(n+1)*A188017(n+1)]`
-/

namespace A188019.P4467304881220036572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188019.P4467304881220036572

namespace A188019

/-- `record[(n+1)*A188017(n+1)]` -/
def P4467304881220036572.Spec : Prop :=
  ∀ n, P4467304881220036572.a n = A188019 (n + 1)

end A188019

/-! ## A188019.P735651921657351300

`eq[A114986(n), A188020(n+1)]`
-/

namespace A188019.P735651921657351300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188019.P735651921657351300

namespace A188019

/-- `eq[A114986(n), A188020(n+1)]` -/
def P735651921657351300.Spec : Prop :=
  ∀ n, (P735651921657351300.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P2626946565334403744

`eq[A188020(n+1)+A000007(n), A096270(n)]`
-/

namespace A188019.P2626946565334403744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (n + 1) + A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188019.P2626946565334403744

namespace A188019

/-- `eq[A188020(n+1)+A000007(n), A096270(n)]` -/
def P2626946565334403744.Spec : Prop :=
  ∀ n, (P2626946565334403744.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P16100783714533607652

`record[A188017(A008619(n))+A025480(n)]`
-/

namespace A188019.P16100783714533607652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (A008619 n).toNat + A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188019.P16100783714533607652

namespace A188019

/-- `record[A188017(A008619(n))+A025480(n)]` -/
def P16100783714533607652.Spec : Prop :=
  ∀ n, P16100783714533607652.a n = A188019 (n + 1)

end A188019

/-! ## A188019.P11721487413515200325

`record[A188017(A008619(n))-A001057(n)]`
-/

namespace A188019.P11721487413515200325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (A008619 n).toNat - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188019.P11721487413515200325

namespace A188019

/-- `record[A188017(A008619(n))-A001057(n)]` -/
def P11721487413515200325.Spec : Prop :=
  ∀ n, P11721487413515200325.a n = A188019 (n + 1)

end A188019

/-! ## A188019.P10836049357749027396

`lt[∑[A188014(2*n+1)], A329130(n)]`
-/

namespace A188019.P10836049357749027396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A188019.P10836049357749027396

namespace A188019

/-- `lt[∑[A188014(2*n+1)], A329130(n)]` -/
def P10836049357749027396.Spec : Prop :=
  ∀ n, (P10836049357749027396.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P15344293478750856011

`lt[A001950(2*n+3), A035338(A329130(n))]`
-/

namespace A188019.P15344293478750856011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 (A329130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188019.P15344293478750856011

namespace A188019

/-- `lt[A001950(2*n+3), A035338(A329130(n))]` -/
def P15344293478750856011.Spec : Prop :=
  ∀ n, (P15344293478750856011.a n : ℤ) = A188019 (n + 1)

end A188019

/-! ## A188019.P15229939478765016334

`lt[A035336(2*n+5), A035339(A329130(n))]`
-/

namespace A188019.P15229939478765016334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035339 (A329130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188019.P15229939478765016334

namespace A188019

/-- `lt[A035336(2*n+5), A035339(A329130(n))]` -/
def P15229939478765016334.Spec : Prop :=
  ∀ n, (P15229939478765016334.a n : ℤ) = A188019 (n + 1)

end A188019

/-!
# A188020: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=7, [ ]=floor.

The programs for A188020, the canonical program `A188020.P10686154921417870516` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188020 has offset 1).

The definition of A188020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188020.P3647164529402656308

`char[A188025(n+1)-1]`
-/

namespace A188020.P3647164529402656308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188020.P3647164529402656308

namespace A188020

/-- `char[A188025(n+1)-1]` -/
def P3647164529402656308.Spec : Prop :=
  ∀ n, (P3647164529402656308.a n : ℤ) = A188020 (n + 1)

end A188020

/-! ## A188020.P10686154921417870516

`A003849(n)*A188470(A123070(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188020

/-- `A003849(n)*A188470(A123070(n+1))` -/
def P10686154921417870516.Spec : Prop :=
  ∀ n, P10686154921417870516.a n = A188020 (n + 1)

theorem P10686154921417870516.correct : P10686154921417870516.Spec := by
  intro n
  simp only [A188020, Nat.add_sub_cancel]

end A188020

/-! ## A188020.P16667162616935724171

`A188034(A188031(n+5)+n)`
-/

namespace A188020.P16667162616935724171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A188031 (n + 5) + (n : ℤ)).toNat

end

end A188020.P16667162616935724171

namespace A188020

/-- `A188034(A188031(n+5)+n)` -/
def P16667162616935724171.Spec : Prop :=
  ∀ n, P16667162616935724171.a n = A188020 (n + 1)

end A188020

/-! ## A188020.P15991585786093132723

`A096270(n)*A188034(A022419(n))`
-/

namespace A188020.P15991585786093132723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n * A188034 (A022419 n).toNat

end

end A188020.P15991585786093132723

namespace A188020

/-- `A096270(n)*A188034(A022419(n))` -/
def P15991585786093132723.Spec : Prop :=
  ∀ n, P15991585786093132723.a n = A188020 (n + 1)

end A188020

/-! ## A188020.P2354143634859618810

`A089809(n+1)*A188034(A022419(n))`
-/

namespace A188020.P2354143634859618810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) * A188034 (A022419 n).toNat

end

end A188020.P2354143634859618810

namespace A188020

/-- `A089809(n+1)*A188034(A022419(n))` -/
def P2354143634859618810.Spec : Prop :=
  ∀ n, P2354143634859618810.a n = A188020 (n + 1)

end A188020

/-! ## A188020.P1874467741642146919

`A188034(n+1)*A188034(A022419(n))`
-/

namespace A188020.P1874467741642146919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1) * A188034 (A022419 n).toNat

end

end A188020.P1874467741642146919

namespace A188020

/-- `A188034(n+1)*A188034(A022419(n))` -/
def P1874467741642146919.Spec : Prop :=
  ∀ n, P1874467741642146919.a n = A188020 (n + 1)

end A188020

/-! ## A188020.P18037064146008001562

`A108357(A232640(n+1))`
-/

namespace A188020.P18037064146008001562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 (A232640 (n + 1)).toNat

end

end A188020.P18037064146008001562

namespace A188020

/-- `A108357(A232640(n+1))` -/
def P18037064146008001562.Spec : Prop :=
  ∀ n, P18037064146008001562.a n = A188020 (n + 1)

end A188020

/-! ## A188020.P13396605151873351976

`A156595(A358915(n))`
-/

namespace A188020.P13396605151873351976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A358915 n).toNat

end

end A188020.P13396605151873351976

namespace A188020

/-- `A156595(A358915(n))` -/
def P13396605151873351976.Spec : Prop :=
  ∀ n, P13396605151873351976.a n = A188020 (n + 1)

end A188020

/-!
# A188021: Expansion of (x^2)/[(1-x)*(1-3*x^2-x^3)].

The programs for A188021, the canonical program `A188021.P11951133369711768480` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188021 has offset 0).

The definition of A188021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188021.P11951133369711768480

`a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188021

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P11951133369711768480.Spec : Prop :=
  ∀ n, P11951133369711768480.a n = A188021 n

theorem P11951133369711768480.correct : P11951133369711768480.Spec := by
  intro n
  simp only [A188021]

end A188021

/-! ## A188021.P1479898634659888552

`A187498(3*n)`
-/

namespace A188021.P1479898634659888552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (3 * n)

end

end A188021.P1479898634659888552

namespace A188021

/-- `A187498(3*n)` -/
def P1479898634659888552.Spec : Prop :=
  ∀ n, P1479898634659888552.a n = A188021 n

end A188021

/-! ## A188021.P10312308867904684078

`ogf(x^2/(1-x-3x^2+2x^3+x^4))`
-/

namespace A188021.P10312308867904684078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, -3, 2, 1] n

end

end A188021.P10312308867904684078

namespace A188021

/-- `ogf(x^2/(1-x-3x^2+2x^3+x^4))` -/
def P10312308867904684078.Spec : Prop :=
  ∀ n, P10312308867904684078.a n = A188021 n

end A188021

/-! ## A188021.P7655536537027279480

`∑[a(n-3)+3*a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A188021.P7655536537027279480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188021.P7655536537027279480

namespace A188021

/-- `∑[a(n-3)+3*a(n-2)]` -/
def P7655536537027279480.Spec : Prop :=
  ∀ n, (P7655536537027279480.a n : ℤ) = A188021 n

end A188021

/-! ## A188021.P7511448573189194633

`3*a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A188021.P7511448573189194633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * a (n - 2) + (a (n - 3) + 1)

end

end A188021.P7511448573189194633

namespace A188021

/-- `3*a(n-2)+a(n-3)+1` -/
def P7511448573189194633.Spec : Prop :=
  ∀ n, (P7511448573189194633.a n : ℤ) = A188021 n

end A188021

/-! ## A188021.P6021732048722166919

`A187496(3*n+2)`
-/

namespace A188021.P6021732048722166919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (3 * n + 2)

end

end A188021.P6021732048722166919

namespace A188021

/-- `A187496(3*n+2)` -/
def P6021732048722166919.Spec : Prop :=
  ∀ n, P6021732048722166919.a n = A188021 n

end A188021

/-! ## A188021.P200262882457119974

`A187495(3*n+5)`
-/

namespace A188021.P200262882457119974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (3 * n + 5)

end

end A188021.P200262882457119974

namespace A188021

/-- `A187495(3*n+5)` -/
def P200262882457119974.Spec : Prop :=
  ∀ n, P200262882457119974.a n = A188021 n

end A188021

/-! ## A188021.P1531109122307586131

`∑[A052931(n)-A188048(n)]`
-/

namespace A188021.P1531109122307586131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 n - A188048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188021.P1531109122307586131

namespace A188021

/-- `∑[A052931(n)-A188048(n)]` -/
def P1531109122307586131.Spec : Prop :=
  ∀ n, P1531109122307586131.a n = A188021 n

end A188021

/-! ## A188021.P15386963206471131617

`∑[A052931(n)-A187497(3*n+1)]`
-/

namespace A188021.P15386963206471131617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052931 n - A187497 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188021.P15386963206471131617

namespace A188021

/-- `∑[A052931(n)-A187497(3*n+1)]` -/
def P15386963206471131617.Spec : Prop :=
  ∀ n, P15386963206471131617.a n = A188021 n

end A188021

/-! ## A188021.P17832634303817066122

`∑[A188048(n)]-A061551(n)`
-/

namespace A188021.P17832634303817066122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061551 n

end

end A188021.P17832634303817066122

namespace A188021

/-- `∑[A188048(n)]-A061551(n)` -/
def P17832634303817066122.Spec : Prop :=
  ∀ n, P17832634303817066122.a n = A188021 n

end A188021

/-! ## A188021.P14878634035363307355

`A188022(n+1)-A061551(n)`
-/

namespace A188021.P14878634035363307355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (n + 1) - A061551 n

end

end A188021.P14878634035363307355

namespace A188021

/-- `A188022(n+1)-A061551(n)` -/
def P14878634035363307355.Spec : Prop :=
  ∀ n, P14878634035363307355.a n = A188021 n

end A188021

/-! ## A188021.P12255884418424087830

`∑[A187497(3*n+1)]-A061551(n)`
-/

namespace A188021.P12255884418424087830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061551 n

end

end A188021.P12255884418424087830

namespace A188021

/-- `∑[A187497(3*n+1)]-A061551(n)` -/
def P12255884418424087830.Spec : Prop :=
  ∀ n, P12255884418424087830.a n = A188021 n

end A188021

/-! ## A188021.P6545479396717134540

`A188048(n+1)+A052931(n)-A061551(n+1)`
-/

namespace A188021.P6545479396717134540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (n + 1) + (A052931 n - A061551 (n + 1))

end

end A188021.P6545479396717134540

namespace A188021

/-- `A188048(n+1)+A052931(n)-A061551(n+1)` -/
def P6545479396717134540.Spec : Prop :=
  ∀ n, P6545479396717134540.a n = A188021 n

end A188021

/-! ## A188021.P6652548275483764024

`Δ[A061551(n+1)]-A061551(n)`
-/

namespace A188021.P6652548275483764024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061551 n

end

end A188021.P6652548275483764024

namespace A188021

/-- `Δ[A061551(n+1)]-A061551(n)` -/
def P6652548275483764024.Spec : Prop :=
  ∀ n, P6652548275483764024.a n = A188021 n

end A188021

/-! ## A188021.P14033894594115345939

`A217733(n+1)-A065455(n+1)`
-/

namespace A188021.P14033894594115345939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 (n + 1) - A065455 (n + 1)

end

end A188021.P14033894594115345939

namespace A188021

/-- `A217733(n+1)-A065455(n+1)` -/
def P14033894594115345939.Spec : Prop :=
  ∀ n, P14033894594115345939.a n = A188021 n

end A188021

/-! ## A188021.P14594623505669257495

`A217733(n)-Δ[Δ[A217733(n)]]`
-/

namespace A188021.P14594623505669257495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217733 n - (f1 (n + 1) - f1 n)

end

end A188021.P14594623505669257495

namespace A188021

/-- `A217733(n)-Δ[Δ[A217733(n)]]` -/
def P14594623505669257495.Spec : Prop :=
  ∀ n, P14594623505669257495.a n = A188021 n

end A188021

/-! ## A188021.P15160082809113460087

`∑[A076264(n)²%A076264(n+1)-A188048(n)]`
-/

namespace A188021.P15160082809113460087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076264 n ^ 2) (A076264 (n + 1)) - A188048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188021.P15160082809113460087

namespace A188021

/-- `∑[A076264(n)²%A076264(n+1)-A188048(n)]` -/
def P15160082809113460087.Spec : Prop :=
  ∀ n, P15160082809113460087.a n = A188021 n

end A188021

/-!
# A188022: Expansion of x*(1+x) / (1-3*x^2-x^3).

The programs for A188022, the canonical program `A188022.P8007241463055667073` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188022 has offset 0).

The definition of A188022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2)/(1-3x^2-x^3))` (program `A188022.P8007241463055667073`, by `A188022.P8007241463055667073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188022.P8007241463055667073

`ogf((x+x^2)/(1-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188022

/-- `ogf((x+x^2)/(1-3x^2-x^3))` -/
def P8007241463055667073.Spec : Prop :=
  ∀ n, P8007241463055667073.a n = A188022 n

theorem P8007241463055667073.correct : P8007241463055667073.Spec := by
  intro n
  simp only [A188022]

end A188022

/-! ## A188022.P10279249142296002029

`3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A188022.P10279249142296002029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * a (n - 2) + a (n - 3)

end

end A188022.P10279249142296002029

namespace A188022

/-- `3*a(n-2)+a(n-3)` -/
def P10279249142296002029.Spec : Prop :=
  ∀ n, (P10279249142296002029.a n : ℤ) = A188022 n

end A188022

/-! ## A188022.P108143430437621412

`A187498(3*n+1)`
-/

namespace A188022.P108143430437621412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (3 * n + 1)

end

end A188022.P108143430437621412

namespace A188022

/-- `A187498(3*n+1)` -/
def P108143430437621412.Spec : Prop :=
  ∀ n, P108143430437621412.a n = A188022 n

end A188022

/-! ## A188022.P16050334855195793300

`4*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A188022.P16050334855195793300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A188022.P16050334855195793300

namespace A188022

/-- `4*a(n-2)-(a(n-2)-a(n-3))` -/
def P16050334855195793300.Spec : Prop :=
  ∀ n, P16050334855195793300.a n = A188022 n

end A188022

/-! ## A188022.P605912589744059433

`a(n-2)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A188022.P605912589744059433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A188022.P605912589744059433

namespace A188022

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-3)` -/
def P605912589744059433.Spec : Prop :=
  ∀ n, (P605912589744059433.a n : ℤ) = A188022 n

end A188022

/-! ## A188022.P5138314159895725511

`A187497(3*n+2)`
-/

namespace A188022.P5138314159895725511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n + 2)

end

end A188022.P5138314159895725511

namespace A188022

/-- `A187497(3*n+2)` -/
def P5138314159895725511.Spec : Prop :=
  ∀ n, P5138314159895725511.a n = A188022 n

end A188022

/-! ## A188022.P8307763135351386885

`∑[A188048(abs(1-n))]`
-/

namespace A188022.P8307763135351386885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188022.P8307763135351386885

namespace A188022

/-- `∑[A188048(abs(1-n))]` -/
def P8307763135351386885.Spec : Prop :=
  ∀ n, P8307763135351386885.a n = A188022 n

end A188022

/-! ## A188022.P8682687081306677546

`A188048(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A188022.P8682687081306677546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188048 (n - 1) + a (n - 1)

end

end A188022.P8682687081306677546

namespace A188022

/-- `A188048(n-1)+a(n-1)` -/
def P8682687081306677546.Spec : Prop :=
  ∀ n, P8682687081306677546.a n = A188022 n

end A188022

/-! ## A188022.P2013780943496132989

`Δ[A061551(n)]`
-/

namespace A188022.P2013780943496132989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188022.P2013780943496132989

namespace A188022

/-- `Δ[A061551(n)]` -/
def P2013780943496132989.Spec : Prop :=
  ∀ n, P2013780943496132989.a n = A188022 n

end A188022

/-! ## A188022.P11089572624645495568

`∑[A188048(n)]-A188048(n)`
-/

namespace A188022.P11089572624645495568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188048 n

end

end A188022.P11089572624645495568

namespace A188022

/-- `∑[A188048(n)]-A188048(n)` -/
def P11089572624645495568.Spec : Prop :=
  ∀ n, P11089572624645495568.a n = A188022 n

end A188022

/-! ## A188022.P13123372527907028569

`A061551(n+1)-A061551(n)`
-/

namespace A188022.P13123372527907028569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (n + 1) - A061551 n

end

end A188022.P13123372527907028569

namespace A188022

/-- `A061551(n+1)-A061551(n)` -/
def P13123372527907028569.Spec : Prop :=
  ∀ n, P13123372527907028569.a n = A188022 n

end A188022

/-! ## A188022.P2940789110665587626

`A188048(n+1)+A188048(n+1)-A052931(n+1)`
-/

namespace A188022.P2940789110665587626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (n + 1) + (A188048 (n + 1) - A052931 (n + 1))

end

end A188022.P2940789110665587626

namespace A188022

/-- `A188048(n+1)+A188048(n+1)-A052931(n+1)` -/
def P2940789110665587626.Spec : Prop :=
  ∀ n, P2940789110665587626.a n = A188022 n

end A188022

/-! ## A188022.P12871725289946469497

`2*A188048(n+1)-A052931(n+1)`
-/

namespace A188022.P12871725289946469497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188048 (n + 1) - A052931 (n + 1)

end

end A188022.P12871725289946469497

namespace A188022

/-- `2*A188048(n+1)-A052931(n+1)` -/
def P12871725289946469497.Spec : Prop :=
  ∀ n, P12871725289946469497.a n = A188022 n

end A188022

/-!
# A188023: Triangle read by rows, T(n,k) = k*A115361(n-1,k-1).

The programs for A188023, the canonical program `A188023.P11150660518032503552` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188023 has offset 1).

The definition of A188023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188023.P18409721865829726506

`(1-C(∑[char[∑[n]]], 2)+n)*A115361(n)`
-/

namespace A188023.P18409721865829726506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A115361 n

end

end A188023.P18409721865829726506

namespace A188023

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A115361(n)` -/
def P18409721865829726506.Spec : Prop :=
  ∀ n, P18409721865829726506.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P11150660518032503552

`A002260(n+1)*A115361(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A188023

/-- `A002260(n+1)*A115361(n)` -/
def P11150660518032503552.Spec : Prop :=
  ∀ n, P11150660518032503552.a n = A188023 (n + 1)

theorem P11150660518032503552.correct : P11150660518032503552.Spec := by
  intro n
  simp only [A188023, Nat.add_sub_cancel]

end A188023

/-! ## A188023.P16905641566730418512

`(A002262(n)+1)*A115361(n)`
-/

namespace A188023.P16905641566730418512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A115361 n

end

end A188023.P16905641566730418512

namespace A188023

/-- `(A002262(n)+1)*A115361(n)` -/
def P16905641566730418512.Spec : Prop :=
  ∀ n, P16905641566730418512.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P5962911223545197861

`A050873(n+1)*A115361(n)`
-/

namespace A188023.P5962911223545197861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A115361 n

end

end A188023.P5962911223545197861

namespace A188023

/-- `A050873(n+1)*A115361(n)` -/
def P5962911223545197861.Spec : Prop :=
  ∀ n, P5962911223545197861.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P10652467918809840024

`A115361(n)*A123275(n+1)`
-/

namespace A188023.P10652467918809840024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A123275 (n + 1)

end

end A188023.P10652467918809840024

namespace A188023

/-- `A115361(n)*A123275(n+1)` -/
def P10652467918809840024.Spec : Prop :=
  ∀ n, P10652467918809840024.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P14055092924243663

`A115361(n)*A127093(n+1)`
-/

namespace A188023.P14055092924243663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A127093 (n + 1)

end

end A188023.P14055092924243663

namespace A188023

/-- `A115361(n)*A127093(n+1)` -/
def P14055092924243663.Spec : Prop :=
  ∀ n, P14055092924243663.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P1935963681858982908

`A115361(n)*A175488(n+1)`
-/

namespace A188023.P1935963681858982908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A175488 (n + 1)

end

end A188023.P1935963681858982908

namespace A188023

/-- `A115361(n)*A175488(n+1)` -/
def P1935963681858982908.Spec : Prop :=
  ∀ n, P1935963681858982908.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P10847846730508909163

`A115361(n)*A327856(n+1)`
-/

namespace A188023.P10847846730508909163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A327856 (n + 1)

end

end A188023.P10847846730508909163

namespace A188023

/-- `A115361(n)*A327856(n+1)` -/
def P10847846730508909163.Spec : Prop :=
  ∀ n, P10847846730508909163.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P11304771304088651982

`A115361(n)*A334230(n+1)`
-/

namespace A188023.P11304771304088651982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A334230 (n + 1)

end

end A188023.P11304771304088651982

namespace A188023

/-- `A115361(n)*A334230(n+1)` -/
def P11304771304088651982.Spec : Prop :=
  ∀ n, P11304771304088651982.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P8833013979378797161

`A115361(n)*A357554(n+1)`
-/

namespace A188023.P8833013979378797161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A357554 (n + 1)

end

end A188023.P8833013979378797161

namespace A188023

/-- `A115361(n)*A357554(n+1)` -/
def P8833013979378797161.Spec : Prop :=
  ∀ n, P8833013979378797161.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P5524242860125495879

`lcm(A002260(n+1), A115358(n))`
-/

namespace A188023.P5524242860125495879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1)) (A115358 n)

end

end A188023.P5524242860125495879

namespace A188023

/-- `lcm(A002260(n+1), A115358(n))` -/
def P5524242860125495879.Spec : Prop :=
  ∀ n, (P5524242860125495879.a n : ℤ) = A188023 (n + 1)

end A188023

/-! ## A188023.P7210790685578780105

`A115361(n)*A307662(n+1)`
-/

namespace A188023.P7210790685578780105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A307662 (n + 1)

end

end A188023.P7210790685578780105

namespace A188023

/-- `A115361(n)*A307662(n+1)` -/
def P7210790685578780105.Spec : Prop :=
  ∀ n, P7210790685578780105.a n = A188023 (n + 1)

end A188023

/-! ## A188023.P1299437835752132381

`A112544(n+1)*A115361(n)`
-/

namespace A188023.P1299437835752132381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A115361 n

end

end A188023.P1299437835752132381

namespace A188023

/-- `A112544(n+1)*A115361(n)` -/
def P1299437835752132381.Spec : Prop :=
  ∀ n, P1299437835752132381.a n = A188023 (n + 1)

end A188023

/-!
# A188024: Positions of 0 in A188020; complement of A188025.

The programs for A188024, the canonical program `A188024.P14928406718776886035` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188024 has offset 1).

The definition of A188024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188024.P2441733697672049985

`comp[A188025(n+1)-1]+1`
-/

namespace A188024.P2441733697672049985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188024.P2441733697672049985

namespace A188024

/-- `comp[A188025(n+1)-1]+1` -/
def P2441733697672049985.Spec : Prop :=
  ∀ n, (P2441733697672049985.a n : ℤ) = A188024 (n + 1)

end A188024

/-! ## A188024.P11720246733294679683

`∪[A188028(n+2)-2, A188028(n+2)]`
-/

namespace A188024.P11720246733294679683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188024.P11720246733294679683

namespace A188024

/-- `∪[A188028(n+2)-2, A188028(n+2)]` -/
def P11720246733294679683.Spec : Prop :=
  ∀ n, (P11720246733294679683.a n : ℤ) = A188024 (n + 1)

end A188024

/-! ## A188024.P533643732013089083

`a(n-1)+A188467(A060143(a(n-1))+1)+1` with `a(0)=1`
-/

namespace A188024.P533643732013089083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A188467 (A060143 (a (n - 1)).toNat + 1).toNat + 1)

end

end A188024.P533643732013089083

namespace A188024

/-- `a(n-1)+A188467(A060143(a(n-1))+1)+1` -/
def P533643732013089083.Spec : Prop :=
  ∀ n, P533643732013089083.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P4106436118469565727

`record[A323889(n)+A188020(A323889(n))]`
-/

namespace A188024.P4106436118469565727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n + A188020 (A323889 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P4106436118469565727

namespace A188024

/-- `record[A323889(n)+A188020(A323889(n))]` -/
def P4106436118469565727.Spec : Prop :=
  ∀ n, P4106436118469565727.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P4448322738183778579

`eq[A028310(n)-n, A188020(A028310(n))]`
-/

namespace A188024.P4448322738183778579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188024.P4448322738183778579

namespace A188024

/-- `eq[A028310(n)-n, A188020(A028310(n))]` -/
def P4448322738183778579.Spec : Prop :=
  ∀ n, (P4448322738183778579.a n : ℤ) = A188024 (n + 1)

end A188024

/-! ## A188024.P11401734055160827213

`eq[A000007(n), A188020(A000007(n)+n)]`
-/

namespace A188024.P11401734055160827213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188024.P11401734055160827213

namespace A188024

/-- `eq[A000007(n), A188020(A000007(n)+n)]` -/
def P11401734055160827213.Spec : Prop :=
  ∀ n, (P11401734055160827213.a n : ℤ) = A188024 (n + 1)

end A188024

/-! ## A188024.P14928406718776886035

`comp[A026351(n+1)*A188467(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188024

/-- `comp[A026351(n+1)*A188467(n+1)]` -/
def P14928406718776886035.Spec : Prop :=
  ∀ n, (P14928406718776886035.a n : ℤ) = A188024 (n + 1)

theorem P14928406718776886035.correct : P14928406718776886035.Spec := by
  intro n
  simp only [A188024, Nat.add_sub_cancel]

end A188024

/-! ## A188024.P1784296235067907349

`record[A188020(A008619(n))+A028242(n)]`
-/

namespace A188024.P1784296235067907349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P1784296235067907349

namespace A188024

/-- `record[A188020(A008619(n))+A028242(n)]` -/
def P1784296235067907349.Spec : Prop :=
  ∀ n, P1784296235067907349.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P3450504554566404755

`record[A008619(n)-A188027(A052938(n))]`
-/

namespace A188024.P3450504554566404755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A188027 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P3450504554566404755

namespace A188024

/-- `record[A008619(n)-A188027(A052938(n))]` -/
def P3450504554566404755.Spec : Prop :=
  ∀ n, P3450504554566404755.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P11548031346348351123

`record[A188020(A003602(n+1))+A003602(n+1)]`
-/

namespace A188024.P11548031346348351123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A003602 (n + 1)).toNat + A003602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P11548031346348351123

namespace A188024

/-- `record[A188020(A003602(n+1))+A003602(n+1)]` -/
def P11548031346348351123.Spec : Prop :=
  ∀ n, P11548031346348351123.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P7812391523842285545

`record[A188020(A032742(n+1))+A032742(n+1)]`
-/

namespace A188024.P7812391523842285545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A032742 (n + 1)).toNat + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P7812391523842285545

namespace A188024

/-- `record[A188020(A032742(n+1))+A032742(n+1)]` -/
def P7812391523842285545.Spec : Prop :=
  ∀ n, P7812391523842285545.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P13003222530493326296

`record[A188020(A154958(n))+A154958(n)]`
-/

namespace A188024.P13003222530493326296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A154958 n).toNat + A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P13003222530493326296

namespace A188024

/-- `record[A188020(A154958(n))+A154958(n)]` -/
def P13003222530493326296.Spec : Prop :=
  ∀ n, P13003222530493326296.a n = A188024 (n + 1)

end A188024

/-! ## A188024.P13844715071809560956

`record[A188020(A027750(n+1))+A027750(n+1)]`
-/

namespace A188024.P13844715071809560956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A027750 (n + 1)).toNat + A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188024.P13844715071809560956

namespace A188024

/-- `record[A188020(A027750(n+1))+A027750(n+1)]` -/
def P13844715071809560956.Spec : Prop :=
  ∀ n, P13844715071809560956.a n = A188024 (n + 1)

end A188024

/-!
# A188025: Positions of 1 in A188020; complement of A188024.

The programs for A188025, the canonical program `A188025.P8051068989946620211` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188025 has offset 1).

The definition of A188025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188025.P15741646616618112796

`ceil(ϕ*A188469(n+1))`
-/

namespace A188025.P15741646616618112796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A188469 (n + 1) : ℝ)⌉

end

end A188025.P15741646616618112796

namespace A188025

/-- `ceil(ϕ*A188469(n+1))` -/
def P15741646616618112796.Spec : Prop :=
  ∀ n, P15741646616618112796.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P8051068989946620211

`A188469(n+1)+A188013(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188025

/-- `A188469(n+1)+A188013(n+1)` -/
def P8051068989946620211.Spec : Prop :=
  ∀ n, P8051068989946620211.a n = A188025 (n + 1)

theorem P8051068989946620211.correct : P8051068989946620211.Spec := by
  intro n
  simp only [A188025, Nat.add_sub_cancel]

end A188025

/-! ## A188025.P16923702886524401237

`A001950(A188013(n+1))`
-/

namespace A188025.P16923702886524401237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A188013 (n + 1)).toNat

end

end A188025.P16923702886524401237

namespace A188025

/-- `A001950(A188013(n+1))` -/
def P16923702886524401237.Spec : Prop :=
  ∀ n, P16923702886524401237.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P5673453463674269271

`record[A001950(n+1)*A188011(n+1)]`
-/

namespace A188025.P5673453463674269271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) * A188011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188025.P5673453463674269271

namespace A188025

/-- `record[A001950(n+1)*A188011(n+1)]` -/
def P5673453463674269271.Spec : Prop :=
  ∀ n, P5673453463674269271.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P5698602400250940703

`∩[A188029(n+1)-2, A188029(n+1)]`
-/

namespace A188025.P5698602400250940703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188025.P5698602400250940703

namespace A188025

/-- `∩[A188029(n+1)-2, A188029(n+1)]` -/
def P5698602400250940703.Spec : Prop :=
  ∀ n, (P5698602400250940703.a n : ℤ) = A188025 (n + 1)

end A188025

/-! ## A188025.P5746287523391871069

`A007067(A188469(n+1)-1)+2`
-/

namespace A188025.P5746287523391871069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A188469 (n + 1) - 1).toNat + 2

end

end A188025.P5746287523391871069

namespace A188025

/-- `A007067(A188469(n+1)-1)+2` -/
def P5746287523391871069.Spec : Prop :=
  ∀ n, P5746287523391871069.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P16771211889184046637

`A002251(A188469(n+1))`
-/

namespace A188025.P16771211889184046637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A188469 (n + 1)).toNat

end

end A188025.P16771211889184046637

namespace A188025

/-- `A002251(A188469(n+1))` -/
def P16771211889184046637.Spec : Prop :=
  ∀ n, P16771211889184046637.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P189893364944263589

`A022342(A188469(n+1)+1)`
-/

namespace A188025.P189893364944263589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A188469 (n + 1) + 1).toNat

end

end A188025.P189893364944263589

namespace A188025

/-- `A022342(A188469(n+1)+1)` -/
def P189893364944263589.Spec : Prop :=
  ∀ n, P189893364944263589.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P5783402440348528002

`A000201(A188469(n+1)+1)-1`
-/

namespace A188025.P5783402440348528002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188469 (n + 1) + 1).toNat - 1

end

end A188025.P5783402440348528002

namespace A188025

/-- `A000201(A188469(n+1)+1)-1` -/
def P5783402440348528002.Spec : Prop :=
  ∀ n, P5783402440348528002.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P10843038508537235020

`record[A026351(n+1)*A188467(n+1)]`
-/

namespace A188025.P10843038508537235020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) * A188467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188025.P10843038508537235020

namespace A188025

/-- `record[A026351(n+1)*A188467(n+1)]` -/
def P10843038508537235020.Spec : Prop :=
  ∀ n, P10843038508537235020.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P682335889442857368

`A026351(A188469(n+1)%(7*n+2))`
-/

namespace A188025.P682335889442857368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (Int.tmod (A188469 (n + 1)) (7 * n + 2 : ℤ)).toNat

end

end A188025.P682335889442857368

namespace A188025

/-- `A026351(A188469(n+1)%(7*n+2))` -/
def P682335889442857368.Spec : Prop :=
  ∀ n, P682335889442857368.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P11530343046660340072

`A026351(eq[A096270(n), A188470(n+1)])`
-/

namespace A188025.P11530343046660340072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188025.P11530343046660340072

namespace A188025

/-- `A026351(eq[A096270(n), A188470(n+1)])` -/
def P11530343046660340072.Spec : Prop :=
  ∀ n, P11530343046660340072.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P7894752893115140205

`A188019(A188013(n+1)+1+n)`
-/

namespace A188025.P7894752893115140205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (A188013 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188025.P7894752893115140205

namespace A188025

/-- `A188019(A188013(n+1)+1+n)` -/
def P7894752893115140205.Spec : Prop :=
  ∀ n, P7894752893115140205.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P3765292202495096733

`A187485(2*∪[A187485(n+1), A188218(n+1)])`
-/

namespace A188025.P3765292202495096733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188025.P3765292202495096733

namespace A188025

/-- `A187485(2*∪[A187485(n+1), A188218(n+1)])` -/
def P3765292202495096733.Spec : Prop :=
  ∀ n, P3765292202495096733.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P4707412798996613093

`filter[n+1, A188020(#)]`
-/

namespace A188025.P4707412798996613093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188020 (f1 j) = 1) n)

end

end A188025.P4707412798996613093

namespace A188025

/-- `filter[n+1, A188020(#)]` -/
def P4707412798996613093.Spec : Prop :=
  ∀ n, (P4707412798996613093.a n : ℤ) = A188025 (n + 1)

end A188025

/-! ## A188025.P17827417428227045250

`eq[1, A188020(A028310(n))]`
-/

namespace A188025.P17827417428227045250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188025.P17827417428227045250

namespace A188025

/-- `eq[1, A188020(A028310(n))]` -/
def P17827417428227045250.Spec : Prop :=
  ∀ n, (P17827417428227045250.a n : ℤ) = A188025 (n + 1)

end A188025

/-! ## A188025.P7737107754340771337

`eq[1, A188020(A000007(n)+n)]`
-/

namespace A188025.P7737107754340771337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188025.P7737107754340771337

namespace A188025

/-- `eq[1, A188020(A000007(n)+n)]` -/
def P7737107754340771337.Spec : Prop :=
  ∀ n, (P7737107754340771337.a n : ℤ) = A188025 (n + 1)

end A188025

/-! ## A188025.P6261479587775426108

`record[A188020(A323889(n+1))*A323889(n+1)]`
-/

namespace A188025.P6261479587775426108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188020 (A323889 (n + 1)).toNat * A323889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188025.P6261479587775426108

namespace A188025

/-- `record[A188020(A323889(n+1))*A323889(n+1)]` -/
def P6261479587775426108.Spec : Prop :=
  ∀ n, P6261479587775426108.a n = A188025 (n + 1)

end A188025

/-! ## A188025.P1645909272515230466

`A000201(A188469(n+1))+A014963(A000217(n+5))`
-/

namespace A188025.P1645909272515230466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188469 (n + 1)).toNat + A014963 (A000217 (n + 5)).toNat

end

end A188025.P1645909272515230466

namespace A188025

/-- `A000201(A188469(n+1))+A014963(A000217(n+5))` -/
def P1645909272515230466.Spec : Prop :=
  ∀ n, P1645909272515230466.a n = A188025 (n + 1)

end A188025

/-!
# A188026: Positions of 0 in the zero-one sequence given by z(n)=[nr]-[nr-8r]-[8r], where r=(1+sqrt(5))/2, [ ]=floor, n>=1.

The programs for A188026, the canonical program `A188026.P8643850523822445030` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188026 has offset 1).

The definition of A188026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188026.P8643850523822445030

`4*ceil(ϕ*comp[ceil(ϕ*n)])+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188026

/-- `4*ceil(ϕ*comp[ceil(ϕ*n)])+n` -/
def P8643850523822445030.Spec : Prop :=
  ∀ n, P8643850523822445030.a n = A188026 (n + 1)

theorem P8643850523822445030.correct : P8643850523822445030.Spec := by
  intro n
  simp only [A188026, Nat.add_sub_cancel]

end A188026

/-! ## A188026.P7420223626136007108

`floor(ϕ*A188471(n+1))`
-/

namespace A188026.P7420223626136007108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188471 (n + 1) : ℝ)⌋

end

end A188026.P7420223626136007108

namespace A188026

/-- `floor(ϕ*A188471(n+1))` -/
def P7420223626136007108.Spec : Prop :=
  ∀ n, P7420223626136007108.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P13911879222968580461

`ceil(A188012(n+1)/(1/ϕ)²)`
-/

namespace A188026.P13911879222968580461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188012 (n + 1) : ℝ) / (1 / Real.goldenRatio) ^ 2⌉

end

end A188026.P13911879222968580461

namespace A188026

/-- `ceil(A188012(n+1)/(1/ϕ)²)` -/
def P13911879222968580461.Spec : Prop :=
  ∀ n, P13911879222968580461.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P168832151254769888

`A101642(A026352(n))`
-/

namespace A188026.P168832151254769888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A026352 n).toNat

end

end A188026.P168832151254769888

namespace A188026

/-- `A101642(A026352(n))` -/
def P168832151254769888.Spec : Prop :=
  ∀ n, P168832151254769888.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P9340877546042635535

`A188438(comp[floor(ϕ*(n+1))]+1)`
-/

namespace A188026.P9340877546042635535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A188026.P9340877546042635535

namespace A188026

/-- `A188438(comp[floor(ϕ*(n+1))]+1)` -/
def P9340877546042635535.Spec : Prop :=
  ∀ n, P9340877546042635535.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P13208600884678111875

`A188012(A026356(n+1))`
-/

namespace A188026.P13208600884678111875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026356 (n + 1)).toNat

end

end A188026.P13208600884678111875

namespace A188026

/-- `A188012(A026356(n+1))` -/
def P13208600884678111875.Spec : Prop :=
  ∀ n, P13208600884678111875.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P2367532903920631900

`A188012(A026352(n)+1)`
-/

namespace A188026.P2367532903920631900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026352 n + 1).toNat

end

end A188026.P2367532903920631900

namespace A188026

/-- `A188012(A026352(n)+1)` -/
def P2367532903920631900.Spec : Prop :=
  ∀ n, P2367532903920631900.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P4236271463634788674

`A188012(record[A002251(n)+2])`
-/

namespace A188026.P4236271463634788674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188026.P4236271463634788674

namespace A188026

/-- `A188012(record[A002251(n)+2])` -/
def P4236271463634788674.Spec : Prop :=
  ∀ n, P4236271463634788674.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P4362912508852537623

`A188012(A188010(2*(n+1)))`
-/

namespace A188026.P4362912508852537623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A188010 (2 * (n + 1))).toNat

end

end A188026.P4362912508852537623

namespace A188026

/-- `A188012(A188010(2*(n+1)))` -/
def P4362912508852537623.Spec : Prop :=
  ∀ n, P4362912508852537623.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P16813870674023030349

`A188012(A026355(n+1)+n)`
-/

namespace A188026.P16813870674023030349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026355 (n + 1) + (n : ℤ)).toNat

end

end A188026.P16813870674023030349

namespace A188026

/-- `A188012(A026355(n+1)+n)` -/
def P16813870674023030349.Spec : Prop :=
  ∀ n, P16813870674023030349.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P6256807046646856343

`A188012(A026351(n)+1+n)`
-/

namespace A188026.P6256807046646856343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026351 n + 1 + (n : ℤ)).toNat

end

end A188026.P6256807046646856343

namespace A188026

/-- `A188012(A026351(n)+1+n)` -/
def P6256807046646856343.Spec : Prop :=
  ∀ n, P6256807046646856343.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P13587589350197413211

`A188012(A099267(n+1)+n)`
-/

namespace A188026.P13587589350197413211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A099267 (n + 1) + (n : ℤ)).toNat

end

end A188026.P13587589350197413211

namespace A188026

/-- `A188012(A099267(n+1)+n)` -/
def P13587589350197413211.Spec : Prop :=
  ∀ n, P13587589350197413211.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P1334704261449158183

`A188012(A284624(n+1)-n)`
-/

namespace A188026.P1334704261449158183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A284624 (n + 1) - (n : ℤ)).toNat

end

end A188026.P1334704261449158183

namespace A188026

/-- `A188012(A284624(n+1)-n)` -/
def P1334704261449158183.Spec : Prop :=
  ∀ n, P1334704261449158183.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P12556627109650659962

`record[A188438(n+1)/A001468(n)]`
-/

namespace A188026.P12556627109650659962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188438 (n + 1) : ℚ) / (A001468 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188026.P12556627109650659962

namespace A188026

/-- `record[A188438(n+1)/A001468(n)]` -/
def P12556627109650659962.Spec : Prop :=
  ∀ n, P12556627109650659962.a n = (A188026 (n + 1) : ℚ)

end A188026

/-! ## A188026.P5562707554456526681

`A188012(A188188(2*n+1)+1)`
-/

namespace A188026.P5562707554456526681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A188188 (2 * n + 1) + 1).toNat

end

end A188026.P5562707554456526681

namespace A188026

/-- `A188012(A188188(2*n+1)+1)` -/
def P5562707554456526681.Spec : Prop :=
  ∀ n, P5562707554456526681.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P15457543794031870951

`A188012(A026351(A026351(n)))`
-/

namespace A188026.P15457543794031870951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026351 (A026351 n).toNat).toNat

end

end A188026.P15457543794031870951

namespace A188026

/-- `A188012(A026351(A026351(n)))` -/
def P15457543794031870951.Spec : Prop :=
  ∀ n, P15457543794031870951.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P12931964222208788681

`A188012(A188012(n+1)-A276885(n+1))`
-/

namespace A188026.P12931964222208788681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A188012 (n + 1) - A276885 (n + 1)).toNat

end

end A188026.P12931964222208788681

namespace A188026

/-- `A188012(A188012(n+1)-A276885(n+1))` -/
def P12931964222208788681.Spec : Prop :=
  ∀ n, P12931964222208788681.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P9879695473680782832

`A188032(A284624(n+1))`
-/

namespace A188026.P9879695473680782832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (A284624 (n + 1)).toNat

end

end A188026.P9879695473680782832

namespace A188026

/-- `A188032(A284624(n+1))` -/
def P9879695473680782832.Spec : Prop :=
  ∀ n, P9879695473680782832.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P487170996879776614

`A188032(A026352(n)+n+1)`
-/

namespace A188026.P487170996879776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (A026352 n + (n + 1 : ℤ)).toNat

end

end A188026.P487170996879776614

namespace A188026

/-- `A188032(A026352(n)+n+1)` -/
def P487170996879776614.Spec : Prop :=
  ∀ n, P487170996879776614.a n = A188026 (n + 1)

end A188026

/-! ## A188026.P7959914995367182220

`A188032(A188010(2*n+1)+n+1)`
-/

namespace A188026.P7959914995367182220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (A188010 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A188026.P7959914995367182220

namespace A188026

/-- `A188032(A188010(2*n+1)+n+1)` -/
def P7959914995367182220.Spec : Prop :=
  ∀ n, P7959914995367182220.a n = A188026 (n + 1)

end A188026

/-!
# A188027: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=9, [ ]=floor.

The programs for A188027, the canonical program `A188027.P17928141488210304603` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188027 has offset 1).

The definition of A188027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188027.P17928141488210304603

`char[A188029(n+1)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188027

/-- `char[A188029(n+1)-1]` -/
def P17928141488210304603.Spec : Prop :=
  ∀ n, (P17928141488210304603.a n : ℤ) = A188027 (n + 1)

theorem P17928141488210304603.correct : P17928141488210304603.Spec := by
  intro n
  simp only [A188027, Nat.add_sub_cancel]

end A188027

/-! ## A188027.P7637397292832242513

`or(A188034(n+1), A188034(n+4))`
-/

namespace A188027.P7637397292832242513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188034 (n + 1)) (A188034 (n + 4))

end

end A188027.P7637397292832242513

namespace A188027

/-- `or(A188034(n+1), A188034(n+4))` -/
def P7637397292832242513.Spec : Prop :=
  ∀ n, P7637397292832242513.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P12775385311540086928

`A188014(A050411(n+2))`
-/

namespace A188027.P12775385311540086928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A050411 (n + 2)).toNat

end

end A188027.P12775385311540086928

namespace A188027

/-- `A188014(A050411(n+2))` -/
def P12775385311540086928.Spec : Prop :=
  ∀ n, P12775385311540086928.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P18171250190051178826

`A096270(n)*A188034(A022417(n))`
-/

namespace A188027.P18171250190051178826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n * A188034 (A022417 n).toNat

end

end A188027.P18171250190051178826

namespace A188027

/-- `A096270(n)*A188034(A022417(n))` -/
def P18171250190051178826.Spec : Prop :=
  ∀ n, P18171250190051178826.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P9222850101062104555

`A334413(5*A189378(n+1))`
-/

namespace A188027.P9222850101062104555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 (5 * A189378 (n + 1)).toNat

end

end A188027.P9222850101062104555

namespace A188027

/-- `A334413(5*A189378(n+1))` -/
def P9222850101062104555.Spec : Prop :=
  ∀ n, P9222850101062104555.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P13460667046805993839

`A190440(2*floor(ϕ*(n+1))+n)^A355594(n+1)`
-/

namespace A188027.P13460667046805993839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190440 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat : ℚ) ^ (A355594 (n + 1) : ℤ)

end

end A188027.P13460667046805993839

namespace A188027

/-- `A190440(2*floor(ϕ*(n+1))+n)^A355594(n+1)` -/
def P13460667046805993839.Spec : Prop :=
  ∀ n, P13460667046805993839.a n = (A188027 (n + 1) : ℚ)

end A188027

/-! ## A188027.P2180469302741053936

`A003849(A283234(A075318(A075318(n+1))))`
-/

namespace A188027.P2180469302741053936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A283234 (A075318 (A075318 (n + 1)).toNat).toNat).toNat

end

end A188027.P2180469302741053936

namespace A188027

/-- `A003849(A283234(A075318(A075318(n+1))))` -/
def P2180469302741053936.Spec : Prop :=
  ∀ n, P2180469302741053936.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P16449816287022922197

`A189479(A126892(n+1))`
-/

namespace A188027.P16449816287022922197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (A126892 (n + 1)).toNat

end

end A188027.P16449816287022922197

namespace A188027

/-- `A189479(A126892(n+1))` -/
def P16449816287022922197.Spec : Prop :=
  ∀ n, P16449816287022922197.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P4718065250530965530

`A005713(A276871(n+2))`
-/

namespace A188027.P4718065250530965530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A276871 (n + 2)).toNat

end

end A188027.P4718065250530965530

namespace A188027

/-- `A005713(A276871(n+2))` -/
def P4718065250530965530.Spec : Prop :=
  ∀ n, P4718065250530965530.a n = A188027 (n + 1)

end A188027

/-! ## A188027.P13928064863162629716

`A005614(A276871(n+2)+2)`
-/

namespace A188027.P13928064863162629716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A276871 (n + 2) + 2).toNat

end

end A188027.P13928064863162629716

namespace A188027

/-- `A005614(A276871(n+2)+2)` -/
def P13928064863162629716.Spec : Prop :=
  ∀ n, P13928064863162629716.a n = A188027 (n + 1)

end A188027

/-!
# A188028: Positions of 0 in A188027; complement of A188029.

The programs for A188028, the canonical program `A188028.P12951466234224238439` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188028 has offset 1).

The definition of A188028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188028.P12951466234224238439

`record[floor(ϕ*(n+1))/A003986(A083368(n+2))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A188028

/-- `record[floor(ϕ*(n+1))/A003986(A083368(n+2))]` -/
def P12951466234224238439.Spec : Prop :=
  ∀ n, P12951466234224238439.a n = (A188028 (n + 1) : ℚ)

end A188028

/-! ## A188028.P3393202653250252723

`record[n+1-A001068(n*A188027(n+1))]`
-/

namespace A188028.P3393202653250252723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001068 ((n : ℤ) * A188027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P3393202653250252723

namespace A188028

/-- `record[n+1-A001068(n*A188027(n+1))]` -/
def P3393202653250252723.Spec : Prop :=
  ∀ n, P3393202653250252723.a n = A188028 (n + 1)

end A188028

/-! ## A188028.P11546061933961771695

`record[n+1-A052938(n)*A188027(n+1)]`
-/

namespace A188028.P11546061933961771695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052938 n * A188027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P11546061933961771695

namespace A188028

/-- `record[n+1-A052938(n)*A188027(n+1)]` -/
def P11546061933961771695.Spec : Prop :=
  ∀ n, P11546061933961771695.a n = A188028 (n + 1)

end A188028

/-! ## A188028.P2664274434726764789

`record[n+1-A071270(n*A188027(n+1))]`
-/

namespace A188028.P2664274434726764789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A071270 ((n : ℤ) * A188027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P2664274434726764789

namespace A188028

/-- `record[n+1-A071270(n*A188027(n+1))]` -/
def P2664274434726764789.Spec : Prop :=
  ∀ n, P2664274434726764789.a n = A188028 (n + 1)

end A188028

/-! ## A188028.P7069836670888554415

`record[(n+1)/A052938(n*A188027(n+1))]`
-/

namespace A188028.P7069836670888554415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052938 ((n : ℤ) * A188027 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P7069836670888554415

namespace A188028

/-- `record[(n+1)/A052938(n*A188027(n+1))]` -/
def P7069836670888554415.Spec : Prop :=
  ∀ n, P7069836670888554415.a n = (A188028 (n + 1) : ℚ)

end A188028

/-! ## A188028.P10851548757367002516

`eq[A187950(A026351(n)), A188034(n+3)]`
-/

namespace A188028.P10851548757367002516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188028.P10851548757367002516

namespace A188028

/-- `eq[A187950(A026351(n)), A188034(n+3)]` -/
def P10851548757367002516.Spec : Prop :=
  ∀ n, (P10851548757367002516.a n : ℤ) = A188028 (n + 1)

end A188028

/-! ## A188028.P17248072722563248503

`record[A003602(A188027(n+1)+A005408(n))]`
-/

namespace A188028.P17248072722563248503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A188027 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P17248072722563248503

namespace A188028

/-- `record[A003602(A188027(n+1)+A005408(n))]` -/
def P17248072722563248503.Spec : Prop :=
  ∀ n, P17248072722563248503.a n = A188028 (n + 1)

end A188028

/-! ## A188028.P15986957310761181750

`record[A028242(A005843(n)-A188027(n+1))]`
-/

namespace A188028.P15986957310761181750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A188027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188028.P15986957310761181750

namespace A188028

/-- `record[A028242(A005843(n)-A188027(n+1))]` -/
def P15986957310761181750.Spec : Prop :=
  ∀ n, P15986957310761181750.a n = A188028 (n + 1)

end A188028

/-!
# A188029: Positions of 1 in A188027; complement of A188028.

The programs for A188029, the canonical program `A188029.P9852327037226438625` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188029 has offset 1).

The definition of A188029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188029.P9852327037226438625

`∪[A188025(n+1)+2, A188025(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188029

/-- `∪[A188025(n+1)+2, A188025(n+1)]` -/
def P9852327037226438625.Spec : Prop :=
  ∀ n, (P9852327037226438625.a n : ℤ) = A188029 (n + 1)

theorem P9852327037226438625.correct : P9852327037226438625.Spec := by
  intro n
  simp only [A188029, Nat.add_sub_cancel]

end A188029

/-! ## A188029.P17703532146577960388

`A026351(eq[1, A188470(n+1)]+1)`
-/

namespace A188029.P17703532146577960388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188029.P17703532146577960388

namespace A188029

/-- `A026351(eq[1, A188470(n+1)]+1)` -/
def P17703532146577960388.Spec : Prop :=
  ∀ n, P17703532146577960388.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P3546649449213796907

`record[A004956(n+1)*A188470(n+1)]`
-/

namespace A188029.P3546649449213796907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1) * A188470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188029.P3546649449213796907

namespace A188029

/-- `record[A004956(n+1)*A188470(n+1)]` -/
def P3546649449213796907.Spec : Prop :=
  ∀ n, P3546649449213796907.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P11521828719557395680

`record[A026351(n+1)*A188470(n+1)]`
-/

namespace A188029.P11521828719557395680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1) * A188470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188029.P11521828719557395680

namespace A188029

/-- `record[A026351(n+1)*A188470(n+1)]` -/
def P11521828719557395680.Spec : Prop :=
  ∀ n, P11521828719557395680.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P2677194352567043808

`filter[n+1, A188027(#)]`
-/

namespace A188029.P2677194352567043808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188027 (f1 j) = 1) n)

end

end A188029.P2677194352567043808

namespace A188029

/-- `filter[n+1, A188027(#)]` -/
def P2677194352567043808.Spec : Prop :=
  ∀ n, (P2677194352567043808.a n : ℤ) = A188029 (n + 1)

end A188029

/-! ## A188029.P9710466966462993114

`A026351(eq[1, A188027(A026351(n))])`
-/

namespace A188029.P9710466966462993114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188029.P9710466966462993114

namespace A188029

/-- `A026351(eq[1, A188027(A026351(n))])` -/
def P9710466966462993114.Spec : Prop :=
  ∀ n, P9710466966462993114.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P1113696774722062717

`eq[1, A188027(A008619(A004273(n)))]`
-/

namespace A188029.P1113696774722062717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188029.P1113696774722062717

namespace A188029

/-- `eq[1, A188027(A008619(A004273(n)))]` -/
def P1113696774722062717.Spec : Prop :=
  ∀ n, (P1113696774722062717.a n : ℤ) = A188029 (n + 1)

end A188029

/-! ## A188029.P17028630709987091815

`A008619(record[A188470(n+1)*A283233(n+1)])`
-/

namespace A188029.P17028630709987091815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1) * A283233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188029.P17028630709987091815

namespace A188029

/-- `A008619(record[A188470(n+1)*A283233(n+1)])` -/
def P17028630709987091815.Spec : Prop :=
  ∀ n, P17028630709987091815.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P7146079990743817432

`A028242(record[A188470(n+1)*A283233(n+1)])`
-/

namespace A188029.P7146079990743817432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1) * A283233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188029.P7146079990743817432

namespace A188029

/-- `A028242(record[A188470(n+1)*A283233(n+1)])` -/
def P7146079990743817432.Spec : Prop :=
  ∀ n, P7146079990743817432.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P3911282388747588866

`A052938(record[A188470(n+1)*A283233(n+1)])`
-/

namespace A188029.P3911282388747588866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1) * A283233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188029.P3911282388747588866

namespace A188029

/-- `A052938(record[A188470(n+1)*A283233(n+1)])` -/
def P3911282388747588866.Spec : Prop :=
  ∀ n, P3911282388747588866.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P969538992510908236

`A003602(record[A005408(n+1)*A188027(n+2)])`
-/

namespace A188029.P969538992510908236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) * A188027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188029.P969538992510908236

namespace A188029

/-- `A003602(record[A005408(n+1)*A188027(n+2)])` -/
def P969538992510908236.Spec : Prop :=
  ∀ n, P969538992510908236.a n = A188029 (n + 1)

end A188029

/-! ## A188029.P1484232508274875833

`A028242(record[A005843(n+1)*A188027(n+2)])`
-/

namespace A188029.P1484232508274875833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A188027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188029.P1484232508274875833

namespace A188029

/-- `A028242(record[A005843(n+1)*A188027(n+2)])` -/
def P1484232508274875833.Spec : Prop :=
  ∀ n, P1484232508274875833.a n = A188029 (n + 1)

end A188029

/-!
# A188030: Positions of 1 in the zero-one sequence given by [nr]-[nr-10r]-[10r], where r=(1+sqrt(5))/2, [ ]=floor, n>=1.

The programs for A188030, the canonical program `A188030.P265076706034375144` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188030 has offset 1).

The definition of A188030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188030.P12580867859968235169

`ceil(ϕ*A188473(n+1))`
-/

namespace A188030.P12580867859968235169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A188473 (n + 1) : ℝ)⌉

end

end A188030.P12580867859968235169

namespace A188030

/-- `ceil(ϕ*A188473(n+1))` -/
def P12580867859968235169.Spec : Prop :=
  ∀ n, P12580867859968235169.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P707563096422643312

`A188473(n+1)+A188016(n+1)`
-/

namespace A188030.P707563096422643312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) + A188016 (n + 1)

end

end A188030.P707563096422643312

namespace A188030

/-- `A188473(n+1)+A188016(n+1)` -/
def P707563096422643312.Spec : Prop :=
  ∀ n, P707563096422643312.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P265076706034375144

`A188435(n+1)+2*A188016(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188030

/-- `A188435(n+1)+2*A188016(n+1)` -/
def P265076706034375144.Spec : Prop :=
  ∀ n, P265076706034375144.a n = A188030 (n + 1)

theorem P265076706034375144.correct : P265076706034375144.Spec := by
  intro n
  simp only [A188030, Nat.add_sub_cancel]

end A188030

/-! ## A188030.P3168582132226616527

`2*A188473(n+1)-A188435(n+1)`
-/

namespace A188030.P3168582132226616527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188473 (n + 1) - A188435 (n + 1)

end

end A188030.P3168582132226616527

namespace A188030

/-- `2*A188473(n+1)-A188435(n+1)` -/
def P3168582132226616527.Spec : Prop :=
  ∀ n, P3168582132226616527.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P15087883963487580538

`round(ϕ*A188473(n+1))%A000124(n+7)`
-/

namespace A188030.P15087883963487580538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio * (A188473 (n + 1) : ℝ))) (A000124 (n + 7))

end

end A188030.P15087883963487580538

namespace A188030

/-- `round(ϕ*A188473(n+1))%A000124(n+7)` -/
def P15087883963487580538.Spec : Prop :=
  ∀ n, P15087883963487580538.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P16548811170442882531

`A101868(A188435(n+1))`
-/

namespace A188030.P16548811170442882531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (A188435 (n + 1)).toNat

end

end A188030.P16548811170442882531

namespace A188030

/-- `A101868(A188435(n+1))` -/
def P16548811170442882531.Spec : Prop :=
  ∀ n, P16548811170442882531.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P6002589148728996311

`A188434(A188435(n+1)+1)`
-/

namespace A188030.P6002589148728996311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A188435 (n + 1) + 1).toNat

end

end A188030.P6002589148728996311

namespace A188030

/-- `A188434(A188435(n+1)+1)` -/
def P6002589148728996311.Spec : Prop :=
  ∀ n, P6002589148728996311.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P16611598165980379254

`A001950(A188016(n+1))`
-/

namespace A188030.P16611598165980379254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A188016 (n + 1)).toNat

end

end A188030.P16611598165980379254

namespace A188030

/-- `A001950(A188016(n+1))` -/
def P16611598165980379254.Spec : Prop :=
  ∀ n, P16611598165980379254.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P8003522782094991620

`A004937(∩[A188019(n+1)-2, A188019(n+1)])`
-/

namespace A188030.P8003522782094991620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A188030.P8003522782094991620

namespace A188030

/-- `A004937(∩[A188019(n+1)-2, A188019(n+1)])` -/
def P8003522782094991620.Spec : Prop :=
  ∀ n, P8003522782094991620.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P10048908953093634738

`∩[A188036(n+1)-2, A188036(n+1)]`
-/

namespace A188030.P10048908953093634738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188030.P10048908953093634738

namespace A188030

/-- `∩[A188036(n+1)-2, A188036(n+1)]` -/
def P10048908953093634738.Spec : Prop :=
  ∀ n, (P10048908953093634738.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P16156074598443256124

`A188016(2*A188435(n+1))`
-/

namespace A188030.P16156074598443256124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (2 * A188435 (n + 1)).toNat

end

end A188030.P16156074598443256124

namespace A188030

/-- `A188016(2*A188435(n+1))` -/
def P16156074598443256124.Spec : Prop :=
  ∀ n, P16156074598443256124.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P6674375463776671308

`∩[A188029(n+1)+1, A188029(n+1)]`
-/

namespace A188030.P6674375463776671308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188030.P6674375463776671308

namespace A188030

/-- `∩[A188029(n+1)+1, A188029(n+1)]` -/
def P6674375463776671308.Spec : Prop :=
  ∀ n, (P6674375463776671308.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P13175316096176851057

`A002251(A188473(n+1))`
-/

namespace A188030.P13175316096176851057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A188473 (n + 1)).toNat

end

end A188030.P13175316096176851057

namespace A188030

/-- `A002251(A188473(n+1))` -/
def P13175316096176851057.Spec : Prop :=
  ∀ n, P13175316096176851057.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P428725370302437938

`A022342(A188473(n+1)+1)`
-/

namespace A188030.P428725370302437938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A188473 (n + 1) + 1).toNat

end

end A188030.P428725370302437938

namespace A188030

/-- `A022342(A188473(n+1)+1)` -/
def P428725370302437938.Spec : Prop :=
  ∀ n, P428725370302437938.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P15628958450957389267

`A007067(∩[A188469(n+1)+2, A188469(n+1)])`
-/

namespace A188030.P15628958450957389267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A188030.P15628958450957389267

namespace A188030

/-- `A007067(∩[A188469(n+1)+2, A188469(n+1)])` -/
def P15628958450957389267.Spec : Prop :=
  ∀ n, P15628958450957389267.a n = A188030 (n + 1)

end A188030

/-! ## A188030.P12584716545991964788

`lt[1, A094570(A083368(n+2))]`
-/

namespace A188030.P12584716545991964788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A083368 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188030.P12584716545991964788

namespace A188030

/-- `lt[1, A094570(A083368(n+2))]` -/
def P12584716545991964788.Spec : Prop :=
  ∀ n, (P12584716545991964788.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P16797678220986226872

`eq[1, A188432(A188031(n+1)+n)]`
-/

namespace A188030.P16797678220986226872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A188031 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188030.P16797678220986226872

namespace A188030

/-- `eq[1, A188432(A188031(n+1)+n)]` -/
def P16797678220986226872.Spec : Prop :=
  ∀ n, (P16797678220986226872.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P9959612498506161070

`eq[1, A191269(A188031(n+1)+n)]`
-/

namespace A188030.P9959612498506161070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191269 (A188031 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188030.P9959612498506161070

namespace A188030

/-- `eq[1, A191269(A188031(n+1)+n)]` -/
def P9959612498506161070.Spec : Prop :=
  ∀ n, (P9959612498506161070.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P14171913035074506043

`eq[A188031(n+1), A392841(n+1)]`
-/

namespace A188030.P14171913035074506043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188030.P14171913035074506043

namespace A188030

/-- `eq[A188031(n+1), A392841(n+1)]` -/
def P14171913035074506043.Spec : Prop :=
  ∀ n, (P14171913035074506043.a n : ℤ) = A188030 (n + 1)

end A188030

/-! ## A188030.P4889354990846798878

`lt[A096270(A028310(n)), A188031(n+1)]`
-/

namespace A188030.P4889354990846798878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188030.P4889354990846798878

namespace A188030

/-- `lt[A096270(A028310(n)), A188031(n+1)]` -/
def P4889354990846798878.Spec : Prop :=
  ∀ n, (P4889354990846798878.a n : ℤ) = A188030 (n + 1)

end A188030

/-!
# A188031: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=11, [ ]=floor.

The programs for A188031, the canonical program `A188031.P2199003862079159089` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188031 has offset 1).

The definition of A188031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188031.P2199003862079159089

`char[A188033(n+1)-1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A188031

/-- `char[A188033(n+1)-1]` -/
def P2199003862079159089.Spec : Prop :=
  ∀ n, (P2199003862079159089.a n : ℤ) = A188031 (n + 1)

theorem P2199003862079159089.correct : P2199003862079159089.Spec := by
  intro n
  simp only [A188031, Nat.add_sub_cancel]

end A188031

/-! ## A188031.P1297767652216578924

`A188034(A120613(n+2)+1)`
-/

namespace A188031.P1297767652216578924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A120613 (n + 2) + 1).toNat

end

end A188031.P1297767652216578924

namespace A188031

/-- `A188034(A120613(n+2)+1)` -/
def P1297767652216578924.Spec : Prop :=
  ∀ n, P1297767652216578924.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P8127170431347338916

`A096270(A188034(n+2)+n)`
-/

namespace A188031.P8127170431347338916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A188034 (n + 2) + (n : ℤ)).toNat

end

end A188031.P8127170431347338916

namespace A188031

/-- `A096270(A188034(n+2)+n)` -/
def P8127170431347338916.Spec : Prop :=
  ∀ n, P8127170431347338916.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P11805586283595609267

`A114986(A188034(n+2)+n)`
-/

namespace A188031.P11805586283595609267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A188034 (n + 2) + (n : ℤ)).toNat

end

end A188031.P11805586283595609267

namespace A188031

/-- `A114986(A188034(n+2)+n)` -/
def P11805586283595609267.Spec : Prop :=
  ∀ n, P11805586283595609267.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P10180913354256553814

`A188034(A188014(n+2)+n+1)`
-/

namespace A188031.P10180913354256553814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A188014 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188031.P10180913354256553814

namespace A188031

/-- `A188034(A188014(n+2)+n+1)` -/
def P10180913354256553814.Spec : Prop :=
  ∀ n, P10180913354256553814.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P8666384938036079281

`A188034(A188034(n+2)+n+1)`
-/

namespace A188031.P8666384938036079281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A188034 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188031.P8666384938036079281

namespace A188031

/-- `A188034(A188034(n+2)+n+1)` -/
def P8666384938036079281.Spec : Prop :=
  ∀ n, P8666384938036079281.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P1544517679493545765

`A188034(A022414(n+1))`
-/

namespace A188031.P1544517679493545765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A022414 (n + 1)).toNat

end

end A188031.P1544517679493545765

namespace A188031

/-- `A188034(A022414(n+1))` -/
def P1544517679493545765.Spec : Prop :=
  ∀ n, P1544517679493545765.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P7215166425786883768

`A188017(A101741(n+1))`
-/

namespace A188031.P7215166425786883768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (A101741 (n + 1)).toNat

end

end A188031.P7215166425786883768

namespace A188031

/-- `A188017(A101741(n+1))` -/
def P7215166425786883768.Spec : Prop :=
  ∀ n, P7215166425786883768.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P8107187613325843767

`A188017(A247432(n+1))`
-/

namespace A188031.P8107187613325843767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (A247432 (n + 1)).toNat

end

end A188031.P8107187613325843767

namespace A188031

/-- `A188017(A247432(n+1))` -/
def P8107187613325843767.Spec : Prop :=
  ∀ n, P8107187613325843767.a n = A188031 (n + 1)

end A188031

/-! ## A188031.P6069651025443207491

`A188034(A101865(n+1))`
-/

namespace A188031.P6069651025443207491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A101865 (n + 1)).toNat

end

end A188031.P6069651025443207491

namespace A188031

/-- `A188034(A101865(n+1))` -/
def P6069651025443207491.Spec : Prop :=
  ∀ n, P6069651025443207491.a n = A188031 (n + 1)

end A188031

/-!
# A188032: Positions of 0 in A188031; complement of A188033.

The programs for A188032, the canonical program `A188032.P4612642274168787894` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188032 has offset 1).

The definition of A188032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188032.P4612642274168787894

`ceil(ϕ²*A188015(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188032

/-- `ceil(ϕ²*A188015(n+1))` -/
def P4612642274168787894.Spec : Prop :=
  ∀ n, P4612642274168787894.a n = A188032 (n + 1)

theorem P4612642274168787894.correct : P4612642274168787894.Spec := by
  intro n
  simp only [A188032, Nat.add_sub_cancel]

end A188032

/-! ## A188032.P1646066784722984288

`A003623(A188437(n+1))`
-/

namespace A188032.P1646066784722984288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A188437 (n + 1)).toNat

end

end A188032.P1646066784722984288

namespace A188032

/-- `A003623(A188437(n+1))` -/
def P1646066784722984288.Spec : Prop :=
  ∀ n, P1646066784722984288.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P1934081470052594138

`A003623(comp[A003623(n+2)*A114986(n+1)])`
-/

namespace A188032.P1934081470052594138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 2) * A114986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188032.P1934081470052594138

namespace A188032

/-- `A003623(comp[A003623(n+2)*A114986(n+1)])` -/
def P1934081470052594138.Spec : Prop :=
  ∀ n, P1934081470052594138.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P7059465780949651738

`A004957(A188015(n+1))`
-/

namespace A188032.P7059465780949651738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A188015 (n + 1)).toNat

end

end A188032.P7059465780949651738

namespace A188032

/-- `A004957(A188015(n+1))` -/
def P7059465780949651738.Spec : Prop :=
  ∀ n, P7059465780949651738.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P15880816061155496199

`A026352(∪[A026356(n+1)+2, A026352(n)])`
-/

namespace A188032.P15880816061155496199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188032.P15880816061155496199

namespace A188032

/-- `A026352(∪[A026356(n+1)+2, A026352(n)])` -/
def P15880816061155496199.Spec : Prop :=
  ∀ n, P15880816061155496199.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P13729719444542840300

`∩[A188028(n+1)+2, A188028(n+1)]`
-/

namespace A188032.P13729719444542840300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188032.P13729719444542840300

namespace A188032

/-- `∩[A188028(n+1)+2, A188028(n+1)]` -/
def P13729719444542840300.Spec : Prop :=
  ∀ n, (P13729719444542840300.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P5616745702478859577

`A188035(A188015(n+1)+n+1)`
-/

namespace A188032.P5616745702478859577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188035 (A188015 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188032.P5616745702478859577

namespace A188032

/-- `A188035(A188015(n+1)+n+1)` -/
def P5616745702478859577.Spec : Prop :=
  ∀ n, P5616745702478859577.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P6366923404940238383

`∩[A188035(n+1)-1, A188035(n+1)]`
-/

namespace A188032.P6366923404940238383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188035 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188032.P6366923404940238383

namespace A188032

/-- `∩[A188035(n+1)-1, A188035(n+1)]` -/
def P6366923404940238383.Spec : Prop :=
  ∀ n, (P6366923404940238383.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P16013399253676427367

`A188435(2*A188015(n+1))`
-/

namespace A188032.P16013399253676427367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (2 * A188015 (n + 1)).toNat

end

end A188032.P16013399253676427367

namespace A188032

/-- `A188435(2*A188015(n+1))` -/
def P16013399253676427367.Spec : Prop :=
  ∀ n, P16013399253676427367.a n = A188032 (n + 1)

end A188032

/-! ## A188032.P9758739964011083541

`lt[n*char[A188033(n+1)], n]`
-/

namespace A188032.P9758739964011083541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188033 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A188032.P9758739964011083541

namespace A188032

/-- `lt[n*char[A188033(n+1)], n]` -/
def P9758739964011083541.Spec : Prop :=
  ∀ n, (P9758739964011083541.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P11147688385230762315

`eq[2, A083381(A083368(n+1))]`
-/

namespace A188032.P11147688385230762315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083381 (A083368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188032.P11147688385230762315

namespace A188032

/-- `eq[2, A083381(A083368(n+1))]` -/
def P11147688385230762315.Spec : Prop :=
  ∀ n, (P11147688385230762315.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P17877982937070909840

`lt[char[A188033(n+1)], A096270(n)]`
-/

namespace A188032.P17877982937070909840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188033 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A188032.P17877982937070909840

namespace A188032

/-- `lt[char[A188033(n+1)], A096270(n)]` -/
def P17877982937070909840.Spec : Prop :=
  ∀ n, (P17877982937070909840.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P16072143851286069290

`eq[A188034(n+1), A392842(n+1)]`
-/

namespace A188032.P16072143851286069290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P16072143851286069290

namespace A188032

/-- `eq[A188034(n+1), A392842(n+1)]` -/
def P16072143851286069290.Spec : Prop :=
  ∀ n, (P16072143851286069290.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P10768356552272444186

`eq[2*A001468(A356749(n)), A356749(n)]`
-/

namespace A188032.P10768356552272444186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001468 (A356749 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P10768356552272444186

namespace A188032

/-- `eq[2*A001468(A356749(n)), A356749(n)]` -/
def P10768356552272444186.Spec : Prop :=
  ∀ n, (P10768356552272444186.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P16057107727499172111

`lt[A094570(A083368(n+1)²), A083368(n+1)]`
-/

namespace A188032.P16057107727499172111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A083368 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188032.P16057107727499172111

namespace A188032

/-- `lt[A094570(A083368(n+1)²), A083368(n+1)]` -/
def P16057107727499172111.Spec : Prop :=
  ∀ n, (P16057107727499172111.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P7058007751071726285

`eq[A114986(A002251(n)), A188034(n+1)]`
-/

namespace A188032.P7058007751071726285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A002251 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P7058007751071726285

namespace A188032

/-- `eq[A114986(A002251(n)), A188034(n+1)]` -/
def P7058007751071726285.Spec : Prop :=
  ∀ n, (P7058007751071726285.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P8435779578872664804

`eq[A114986(A022342(n+1)), A188034(n+1)]`
-/

namespace A188032.P8435779578872664804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A022342 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P8435779578872664804

namespace A188032

/-- `eq[A114986(A022342(n+1)), A188034(n+1)]` -/
def P8435779578872664804.Spec : Prop :=
  ∀ n, (P8435779578872664804.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P8171140332786590944

`eq[A188034(n+1), A188034(A026351(n)+1)]`
-/

namespace A188032.P8171140332786590944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A026351 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P8171140332786590944

namespace A188032

/-- `eq[A188034(n+1), A188034(A026351(n)+1)]` -/
def P8171140332786590944.Spec : Prop :=
  ∀ n, (P8171140332786590944.a n : ℤ) = A188032 (n + 1)

end A188032

/-! ## A188032.P471079104602924339

`eq[A000034(2*n+1), A187180(A083368(n+1))]`
-/

namespace A188032.P471079104602924339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A083368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188032.P471079104602924339

namespace A188032

/-- `eq[A000034(2*n+1), A187180(A083368(n+1))]` -/
def P471079104602924339.Spec : Prop :=
  ∀ n, (P471079104602924339.a n : ℤ) = A188032 (n + 1)

end A188032

/-!
# A188033: Positions of 1 in A188031; complement of A188032.

The programs for A188033, the canonical program `A188033.P10533942783404073744` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188033 has offset 1).

The definition of A188033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188033.P10533942783404073744

`∪[A188036(n+1)-1, A188036(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A188033

/-- `∪[A188036(n+1)-1, A188036(n+1)]` -/
def P10533942783404073744.Spec : Prop :=
  ∀ n, (P10533942783404073744.a n : ℤ) = A188033 (n + 1)

theorem P10533942783404073744.correct : P10533942783404073744.Spec := by
  intro n
  simp only [A188033, Nat.add_sub_cancel]

end A188033

/-! ## A188033.P8328552793149776303

`filter[n+1, A188031(#)]`
-/

namespace A188033.P8328552793149776303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188031 (f1 j) = 1) n)

end

end A188033.P8328552793149776303

namespace A188033

/-- `filter[n+1, A188031(#)]` -/
def P8328552793149776303.Spec : Prop :=
  ∀ n, (P8328552793149776303.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P11608367303406205467

`record[(n+1)*A188031(n+1)]`
-/

namespace A188033.P11608367303406205467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188033.P11608367303406205467

namespace A188033

/-- `record[(n+1)*A188031(n+1)]` -/
def P11608367303406205467.Spec : Prop :=
  ∀ n, P11608367303406205467.a n = A188033 (n + 1)

end A188033

/-! ## A188033.P16108608863465900809

`eq[1, A188034(A114986(n)+n)]`
-/

namespace A188033.P16108608863465900809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A114986 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188033.P16108608863465900809

namespace A188033

/-- `eq[1, A188034(A114986(n)+n)]` -/
def P16108608863465900809.Spec : Prop :=
  ∀ n, (P16108608863465900809.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P6231389607612512322

`record[(A188031(n+1)+n)%A014193(n+1)]`
-/

namespace A188033.P6231389607612512322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188031 (n + 1) + (n : ℤ)) (A014193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188033.P6231389607612512322

namespace A188033

/-- `record[(A188031(n+1)+n)%A014193(n+1)]` -/
def P6231389607612512322.Spec : Prop :=
  ∀ n, P6231389607612512322.a n = A188033 (n + 1)

end A188033

/-! ## A188033.P6481733626143111130

`record[gcd(A188031(n+1)+n, A000027(n+1))]`
-/

namespace A188033.P6481733626143111130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188031 (n + 1) + (n : ℤ)) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188033.P6481733626143111130

namespace A188033

/-- `record[gcd(A188031(n+1)+n, A000027(n+1))]` -/
def P6481733626143111130.Spec : Prop :=
  ∀ n, (P6481733626143111130.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P14729498795713589745

`eq[1, A188034(A120613(n+1)+1)]`
-/

namespace A188033.P14729498795713589745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A120613 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188033.P14729498795713589745

namespace A188033

/-- `eq[1, A188034(A120613(n+1)+1)]` -/
def P14729498795713589745.Spec : Prop :=
  ∀ n, (P14729498795713589745.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P7855549877363431979

`eq[1, A188432(n+1)+A188034(n+1)]`
-/

namespace A188033.P7855549877363431979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + A188034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188033.P7855549877363431979

namespace A188033

/-- `eq[1, A188432(n+1)+A188034(n+1)]` -/
def P7855549877363431979.Spec : Prop :=
  ∀ n, (P7855549877363431979.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P1711416888151425447

`eq[A188034(n+1)+A000007(n), A096270(n)]`
-/

namespace A188033.P1711416888151425447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1) + A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188033.P1711416888151425447

namespace A188033

/-- `eq[A188034(n+1)+A000007(n), A096270(n)]` -/
def P1711416888151425447.Spec : Prop :=
  ∀ n, (P1711416888151425447.a n : ℤ) = A188033 (n + 1)

end A188033

/-! ## A188033.P17486384065036871010

`record[A188031(A052938(n))+A025480(n)]`
-/

namespace A188033.P17486384065036871010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (A052938 n).toNat + A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188033.P17486384065036871010

namespace A188033

/-- `record[A188031(A052938(n))+A025480(n)]` -/
def P17486384065036871010.Spec : Prop :=
  ∀ n, P17486384065036871010.a n = A188033 (n + 1)

end A188033

/-! ## A188033.P8453427221481519121

`record[A188031(A052938(n))-A001057(n)]`
-/

namespace A188033.P8453427221481519121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (A052938 n).toNat - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188033.P8453427221481519121

namespace A188033

/-- `record[A188031(A052938(n))-A001057(n)]` -/
def P8453427221481519121.Spec : Prop :=
  ∀ n, P8453427221481519121.a n = A188033 (n + 1)

end A188033

/-!
# A188034: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=12, [ ]=floor.

The programs for A188034, the canonical program `A188034.P1990084002153887556` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188034 has offset 1).

The definition of A188034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188034.P5363500366147632635

`char[A188036(n+1)-1]`
-/

namespace A188034.P5363500366147632635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188034.P5363500366147632635

namespace A188034

/-- `char[A188036(n+1)-1]` -/
def P5363500366147632635.Spec : Prop :=
  ∀ n, (P5363500366147632635.a n : ℤ) = A188034 (n + 1)

end A188034

/-! ## A188034.P1990084002153887556

`A097805(C(4, A356749(n)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A188034

/-- `A097805(C(4, A356749(n)))` -/
def P1990084002153887556.Spec : Prop :=
  ∀ n, P1990084002153887556.a n = A188034 (n + 1)

theorem P1990084002153887556.correct : P1990084002153887556.Spec := by
  intro n
  simp only [A188034, Nat.add_sub_cancel]

end A188034

/-! ## A188034.P17764272960623558587

`A132393(C(4, A356749(n)))`
-/

namespace A188034.P17764272960623558587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (Nat.choose 4 (A356749 n).toNat)

end

end A188034.P17764272960623558587

namespace A188034

/-- `A132393(C(4, A356749(n)))` -/
def P17764272960623558587.Spec : Prop :=
  ∀ n, P17764272960623558587.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P4913415411344529500

`char[A188033(n+1)]*A096270(n)`
-/

namespace A188034.P4913415411344529500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188033 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A096270 n

end

end A188034.P4913415411344529500

namespace A188034

/-- `char[A188033(n+1)]*A096270(n)` -/
def P4913415411344529500.Spec : Prop :=
  ∀ n, P4913415411344529500.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P8560545573045591223

`A096270(n*A188031(A028310(n)))`
-/

namespace A188034.P8560545573045591223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n : ℤ) * A188031 (A028310 n).toNat).toNat

end

end A188034.P8560545573045591223

namespace A188034

/-- `A096270(n*A188031(A028310(n)))` -/
def P8560545573045591223.Spec : Prop :=
  ∀ n, P8560545573045591223.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P2666827492960599117

`A188014(7*A188030(2*n+3))`
-/

namespace A188034.P2666827492960599117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (7 * A188030 (2 * n + 3)).toNat

end

end A188034.P2666827492960599117

namespace A188034

/-- `A188014(7*A188030(2*n+3))` -/
def P2666827492960599117.Spec : Prop :=
  ∀ n, P2666827492960599117.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P1595865431220101141

`A284387(A368649(A003231(A190723(A003231(n+1)))))`
-/

namespace A188034.P1595865431220101141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (A368649 (A003231 (A190723 (A003231 (n + 1)).toNat).toNat).toNat).toNat

end

end A188034.P1595865431220101141

namespace A188034

/-- `A284387(A368649(A003231(A190723(A003231(n+1)))))` -/
def P1595865431220101141.Spec : Prop :=
  ∀ n, P1595865431220101141.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P11269913958615232005

`A189661(A330063(n+2))`
-/

namespace A188034.P11269913958615232005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A330063 (n + 2)).toNat

end

end A188034.P11269913958615232005

namespace A188034

/-- `A189661(A330063(n+2))` -/
def P11269913958615232005.Spec : Prop :=
  ∀ n, P11269913958615232005.a n = A188034 (n + 1)

end A188034

/-! ## A188034.P7681417273514786500

`A011658((1-A059547(n+1))²)`
-/

namespace A188034.P7681417273514786500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 ((1 - A059547 (n + 1)) ^ 2).toNat

end

end A188034.P7681417273514786500

namespace A188034

/-- `A011658((1-A059547(n+1))²)` -/
def P7681417273514786500.Spec : Prop :=
  ∀ n, P7681417273514786500.a n = A188034 (n + 1)

end A188034

/-!
# A188035: Positions of 0 in A188034; complement of A188036.

The programs for A188035, the canonical program `A188035.P9563837123544036393` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188035 has offset 1).

The definition of A188035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188035.P9563837123544036393

`eq[A000007(n), A188034(A000007(n)+n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A188035

/-- `eq[A000007(n), A188034(A000007(n)+n)]` -/
def P9563837123544036393.Spec : Prop :=
  ∀ n, (P9563837123544036393.a n : ℤ) = A188035 (n + 1)

theorem P9563837123544036393.correct : P9563837123544036393.Spec := by
  intro n
  simp only [A188035, Nat.add_sub_cancel]

end A188035

/-! ## A188035.P13373738348715870666

`lt[A000005(A000040(n+1)*A188034(n+1)+1), 3]+1`
-/

namespace A188035.P13373738348715870666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) * A188034 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188035.P13373738348715870666

namespace A188035

/-- `lt[A000005(A000040(n+1)*A188034(n+1)+1), 3]+1` -/
def P13373738348715870666.Spec : Prop :=
  ∀ n, (P13373738348715870666.a n : ℤ) = A188035 (n + 1)

end A188035

/-! ## A188035.P8444379860181538790

`A061395(p?[A188034(n+1)+A000040(n+1)])`
-/

namespace A188035.P8444379860181538790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188035.P8444379860181538790

namespace A188035

/-- `A061395(p?[A188034(n+1)+A000040(n+1)])` -/
def P8444379860181538790.Spec : Prop :=
  ∀ n, P8444379860181538790.a n = A188035 (n + 1)

end A188035

/-! ## A188035.P9601184529445585304

`record[A026242(A188034(n+1)+A099267(n+1))]`
-/

namespace A188035.P9601184529445585304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A188034 (n + 1) + A099267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188035.P9601184529445585304

namespace A188035

/-- `record[A026242(A188034(n+1)+A099267(n+1))]` -/
def P9601184529445585304.Spec : Prop :=
  ∀ n, P9601184529445585304.a n = A188035 (n + 1)

end A188035

/-! ## A188035.P3989046307055373067

`eq[A000007(n), A188034(A065033(2*n))]`
-/

namespace A188035.P3989046307055373067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188035.P3989046307055373067

namespace A188035

/-- `eq[A000007(n), A188034(A065033(2*n))]` -/
def P3989046307055373067.Spec : Prop :=
  ∀ n, (P3989046307055373067.a n : ℤ) = A188035 (n + 1)

end A188035

/-! ## A188035.P3722471277823715470

`record[A028242(A005843(n)-A188034(n+1))]`
-/

namespace A188035.P3722471277823715470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005843 n - A188034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188035.P3722471277823715470

namespace A188035

/-- `record[A028242(A005843(n)-A188034(n+1))]` -/
def P3722471277823715470.Spec : Prop :=
  ∀ n, P3722471277823715470.a n = A188035 (n + 1)

end A188035

/-! ## A188035.P3438011755084533445

`A049084(p?[A188034(n+1)+A000040(n+1)])`
-/

namespace A188035.P3438011755084533445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188035.P3438011755084533445

namespace A188035

/-- `A049084(p?[A188034(n+1)+A000040(n+1)])` -/
def P3438011755084533445.Spec : Prop :=
  ∀ n, P3438011755084533445.a n = A188035 (n + 1)

end A188035

/-!
# A188036: Positions of 1 in A188034; complement of A188035.

The programs for A188036, the canonical program `A188036.P650104059794758320` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188036 has offset 1).

The definition of A188036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188036.P650104059794758320

`filter[n+1, A188034(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A188036

/-- `filter[n+1, A188034(#)]` -/
def P650104059794758320.Spec : Prop :=
  ∀ n, (P650104059794758320.a n : ℤ) = A188036 (n + 1)

theorem P650104059794758320.correct : P650104059794758320.Spec := by
  intro n
  simp only [A188036, Nat.add_sub_cancel]

end A188036

/-! ## A188036.P3012767018988370510

`record[2*A188034(n+2)+n]`
-/

namespace A188036.P3012767018988370510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188034 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188036.P3012767018988370510

namespace A188036

/-- `record[2*A188034(n+2)+n]` -/
def P3012767018988370510.Spec : Prop :=
  ∀ n, P3012767018988370510.a n = A188036 (n + 1)

end A188036

/-! ## A188036.P1781304846496262852

`ceil(ϕ*eq[1, A188034(A026351(n))])`
-/

namespace A188036.P1781304846496262852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℝ)⌉

end

end A188036.P1781304846496262852

namespace A188036

/-- `ceil(ϕ*eq[1, A188034(A026351(n))])` -/
def P1781304846496262852.Spec : Prop :=
  ∀ n, P1781304846496262852.a n = A188036 (n + 1)

end A188036

/-! ## A188036.P16630053781796663846

`A026351(eq[1, A188034(A026351(n))])`
-/

namespace A188036.P16630053781796663846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188036.P16630053781796663846

namespace A188036

/-- `A026351(eq[1, A188034(A026351(n))])` -/
def P16630053781796663846.Spec : Prop :=
  ∀ n, P16630053781796663846.a n = A188036 (n + 1)

end A188036

/-! ## A188036.P3682441879124188603

`eq[1, A188034(A000007(n)+n)]`
-/

namespace A188036.P3682441879124188603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188036.P3682441879124188603

namespace A188036

/-- `eq[1, A188034(A000007(n)+n)]` -/
def P3682441879124188603.Spec : Prop :=
  ∀ n, (P3682441879124188603.a n : ℤ) = A188036 (n + 1)

end A188036

/-! ## A188036.P317483568247798318

`lt[∑[2*A188014(n+1)], A329130(n)]`
-/

namespace A188036.P317483568247798318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188014 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A188036.P317483568247798318

namespace A188036

/-- `lt[∑[2*A188014(n+1)], A329130(n)]` -/
def P317483568247798318.Spec : Prop :=
  ∀ n, (P317483568247798318.a n : ℤ) = A188036 (n + 1)

end A188036

/-! ## A188036.P15007428013200267806

`A061395(p?[A000040(n+1)*A188034(n+1)])`
-/

namespace A188036.P15007428013200267806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A188034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188036.P15007428013200267806

namespace A188036

/-- `A061395(p?[A000040(n+1)*A188034(n+1)])` -/
def P15007428013200267806.Spec : Prop :=
  ∀ n, P15007428013200267806.a n = A188036 (n + 1)

end A188036

/-! ## A188036.P15050581285113156478

`eq[1, A188034(A065033(2*n))]`
-/

namespace A188036.P15050581285113156478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188036.P15050581285113156478

namespace A188036

/-- `eq[1, A188034(A065033(2*n))]` -/
def P15050581285113156478.Spec : Prop :=
  ∀ n, (P15050581285113156478.a n : ℤ) = A188036 (n + 1)

end A188036

/-! ## A188036.P11087275932707005614

`eq[1, A188034(A123108(2*n))]`
-/

namespace A188036.P11087275932707005614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188034 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188036.P11087275932707005614

namespace A188036

/-- `eq[1, A188034(A123108(2*n))]` -/
def P11087275932707005614.Spec : Prop :=
  ∀ n, (P11087275932707005614.a n : ℤ) = A188036 (n + 1)

end A188036

/-! ## A188036.P6606256276363573164

`A049084(p?[A000040(n+1)*A188034(n+1)])`
-/

namespace A188036.P6606256276363573164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A188034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A188036.P6606256276363573164

namespace A188036

/-- `A049084(p?[A000040(n+1)*A188034(n+1)])` -/
def P6606256276363573164.Spec : Prop :=
  ∀ n, P6606256276363573164.a n = A188036 (n + 1)

end A188036

/-!
# A188037: a(n) = floor(n*r) - 1 - floor((n-1)*r), where r = sqrt(2).

The programs for A188037, the canonical program `A188037.P8986179650995583249` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188037 has offset 1).

The definition of A188037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188037.P8986179650995583249

`floor((n+1)*sqrt(2))-1-floor(n*sqrt(2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188037

/-- `floor((n+1)*sqrt(2))-1-floor(n*sqrt(2))` -/
def P8986179650995583249.Spec : Prop :=
  ∀ n, P8986179650995583249.a n = A188037 (n + 1)

theorem P8986179650995583249.correct : P8986179650995583249.Spec := by
  intro n
  simp only [A188037, Nat.add_sub_cancel]

end A188037

/-! ## A188037.P2074231289252919774

`3%Δ[floor(n*sqrt(2))]`
-/

namespace A188037.P2074231289252919774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A188037.P2074231289252919774

namespace A188037

/-- `3%Δ[floor(n*sqrt(2))]` -/
def P2074231289252919774.Spec : Prop :=
  ∀ n, P2074231289252919774.a n = A188037 (n + 1)

end A188037

/-! ## A188037.P98370238054693564

`val(Δ[floor(n*sqrt(2))], 2)`
-/

namespace A188037.P98370238054693564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A188037.P98370238054693564

namespace A188037

/-- `val(Δ[floor(n*sqrt(2))], 2)` -/
def P98370238054693564.Spec : Prop :=
  ∀ n, (P98370238054693564.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P451487927790863967

`C(Δ[floor(n*sqrt(2))], 2)`
-/

namespace A188037.P451487927790863967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A188037.P451487927790863967

namespace A188037

/-- `C(Δ[floor(n*sqrt(2))], 2)` -/
def P451487927790863967.Spec : Prop :=
  ∀ n, (P451487927790863967.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P2273297680293521250

`Δ[floor(n²/(a(n-1)+2*n+1))]` with `a(0)=0`
-/

namespace A188037.P2273297680293521250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n ^ 2 : ℚ) / (f1 (n - 1) + (2 * n + 1 : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188037.P2273297680293521250

namespace A188037

/-- `Δ[floor(n²/(a(n-1)+2*n+1))]` -/
def P2273297680293521250.Spec : Prop :=
  ∀ n, P2273297680293521250.a n = A188037 (n + 1)

end A188037

/-! ## A188037.P7463119481960373441

`log2(Δ[A001951(n)])`
-/

namespace A188037.P7463119481960373441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A188037.P7463119481960373441

namespace A188037

/-- `log2(Δ[A001951(n)])` -/
def P7463119481960373441.Spec : Prop :=
  ∀ n, P7463119481960373441.a n = (A188037 (n + 1) : ℝ)

end A188037

/-! ## A188037.P2602899696668268751

`char[A003151(n+1)]`
-/

namespace A188037.P2602899696668268751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P2602899696668268751

namespace A188037

/-- `char[A003151(n+1)]` -/
def P2602899696668268751.Spec : Prop :=
  ∀ n, (P2602899696668268751.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P8518919332642539818

`and(1, A191405(n)+1)`
-/

namespace A188037.P8518919332642539818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A191405 n + 1)

end

end A188037.P8518919332642539818

namespace A188037

/-- `and(1, A191405(n)+1)` -/
def P8518919332642539818.Spec : Prop :=
  ∀ n, P8518919332642539818.a n = A188037 (n + 1)

end A188037

/-! ## A188037.P12057859034853040247

`char[∑[A097509(n)]-1]`
-/

namespace A188037.P12057859034853040247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P12057859034853040247

namespace A188037

/-- `char[∑[A097509(n)]-1]` -/
def P12057859034853040247.Spec : Prop :=
  ∀ n, (P12057859034853040247.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P11576229577361151438

`char[record[A109250(n+1)]]`
-/

namespace A188037.P11576229577361151438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P11576229577361151438

namespace A188037

/-- `char[record[A109250(n+1)]]` -/
def P11576229577361151438.Spec : Prop :=
  ∀ n, (P11576229577361151438.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P8270411485130094232

`char[A286666(n+1)+1]`
-/

namespace A188037.P8270411485130094232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P8270411485130094232

namespace A188037

/-- `char[A286666(n+1)+1]` -/
def P8270411485130094232.Spec : Prop :=
  ∀ n, (P8270411485130094232.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P4726938359990476172

`char[A080754(n+1)-1]`
-/

namespace A188037.P4726938359990476172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P4726938359990476172

namespace A188037

/-- `char[A080754(n+1)-1]` -/
def P4726938359990476172.Spec : Prop :=
  ∀ n, (P4726938359990476172.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P13119046097331987318

`char[A285078(n+1)-2]`
-/

namespace A188037.P13119046097331987318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P13119046097331987318

namespace A188037

/-- `char[A285078(n+1)-2]` -/
def P13119046097331987318.Spec : Prop :=
  ∀ n, (P13119046097331987318.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P13397321161971839889

`char[A187968(2*(n+1))]`
-/

namespace A188037.P13397321161971839889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P13397321161971839889

namespace A188037

/-- `char[A187968(2*(n+1))]` -/
def P13397321161971839889.Spec : Prop :=
  ∀ n, (P13397321161971839889.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P14108256879554074288

`char[A285075(n+2)-2]`
-/

namespace A188037.P14108256879554074288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P14108256879554074288

namespace A188037

/-- `char[A285075(n+2)-2]` -/
def P14108256879554074288.Spec : Prop :=
  ∀ n, (P14108256879554074288.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P2687331893651425036

`char[A087057(n+1)+n]`
-/

namespace A188037.P2687331893651425036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188037.P2687331893651425036

namespace A188037

/-- `char[A087057(n+1)+n]` -/
def P2687331893651425036.Spec : Prop :=
  ∀ n, (P2687331893651425036.a n : ℤ) = A188037 (n + 1)

end A188037

/-! ## A188037.P6950998478035384258

`A159684((n-1)%(n+1))`
-/

namespace A188037.P6950998478035384258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A188037.P6950998478035384258

namespace A188037

/-- `A159684((n-1)%(n+1))` -/
def P6950998478035384258.Spec : Prop :=
  ∀ n, P6950998478035384258.a n = A188037 (n + 1)

end A188037

/-! ## A188037.P12407416549079993301

`and(A057427(n), A097509(n))`
-/

namespace A188037.P12407416549079993301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A097509 n)

end

end A188037.P12407416549079993301

namespace A188037

/-- `and(A057427(n), A097509(n))` -/
def P12407416549079993301.Spec : Prop :=
  ∀ n, P12407416549079993301.a n = A188037 (n + 1)

end A188037

/-! ## A188037.P17932670781960780650

`and(A097509(n), A116520(n))`
-/

namespace A188037.P17932670781960780650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097509 n) (A116520 n)

end

end A188037.P17932670781960780650

namespace A188037

/-- `and(A097509(n), A116520(n))` -/
def P17932670781960780650.Spec : Prop :=
  ∀ n, P17932670781960780650.a n = A188037 (n + 1)

end A188037

/-!
# A188038: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=2, [ ]=floor.

The programs for A188038, the canonical program `A188038.P9406731732138092868` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188038 has offset 1).

The definition of A188038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188038.P15262875298067640055

`floor((n+1)*sqrt(2))-floor((n-1)*sqrt(2))-2`
-/

namespace A188038.P15262875298067640055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 2

end

end A188038.P15262875298067640055

namespace A188038

/-- `floor((n+1)*sqrt(2))-floor((n-1)*sqrt(2))-2` -/
def P15262875298067640055.Spec : Prop :=
  ∀ n, P15262875298067640055.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P10236488517250435580

`char[A327177(n)+n]`
-/

namespace A188038.P10236488517250435580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188038.P10236488517250435580

namespace A188038

/-- `char[A327177(n)+n]` -/
def P10236488517250435580.Spec : Prop :=
  ∀ n, (P10236488517250435580.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P18205726537479634655

`char[comp[A276879(n+1)]]`
-/

namespace A188038.P18205726537479634655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188038.P18205726537479634655

namespace A188038

/-- `char[comp[A276879(n+1)]]` -/
def P18205726537479634655.Spec : Prop :=
  ∀ n, (P18205726537479634655.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P5519452271894615028

`char[A188040(n+1)-1]`
-/

namespace A188038.P5519452271894615028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188038.P5519452271894615028

namespace A188038

/-- `char[A188040(n+1)-1]` -/
def P5519452271894615028.Spec : Prop :=
  ∀ n, (P5519452271894615028.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P9370404304973977758

`char[char[A187968(n+1)]+n]`
-/

namespace A188038.P9370404304973977758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188038.P9370404304973977758

namespace A188038

/-- `char[char[A187968(n+1)]+n]` -/
def P9370404304973977758.Spec : Prop :=
  ∀ n, (P9370404304973977758.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P7545525229370945752

`char[char[A327179(n+1)]+n]`
-/

namespace A188038.P7545525229370945752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188038.P7545525229370945752

namespace A188038

/-- `char[char[A327179(n+1)]+n]` -/
def P7545525229370945752.Spec : Prop :=
  ∀ n, (P7545525229370945752.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P9406731732138092868

`A187967(n-a(n-1))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188038

/-- `A187967(n-a(n-1))` -/
def P9406731732138092868.Spec : Prop :=
  ∀ n, P9406731732138092868.a n = A188038 (n + 1)

theorem P9406731732138092868.correct : P9406731732138092868.Spec := by
  intro n
  simp only [A188038, Nat.add_sub_cancel]

end A188038

/-! ## A188038.P7914982181898304334

`A188044(a(n-2)+n)` with `a(0)=1, a(1)=0`
-/

namespace A188038.P7914982181898304334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A188044 (a (n - 2) + (n : ℤ)).toNat

end

end A188038.P7914982181898304334

namespace A188038

/-- `A188044(a(n-2)+n)` -/
def P7914982181898304334.Spec : Prop :=
  ∀ n, P7914982181898304334.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P17753042213697708966

`A285076(n*A159684(n)+1)`
-/

namespace A188038.P17753042213697708966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 ((n : ℤ) * A159684 n + 1).toNat

end

end A188038.P17753042213697708966

namespace A188038

/-- `A285076(n*A159684(n)+1)` -/
def P17753042213697708966.Spec : Prop :=
  ∀ n, P17753042213697708966.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P14895518869234625815

`xor(A188037(n+1), A285076(n+1))`
-/

namespace A188038.P14895518869234625815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188037 (n + 1)) (A285076 (n + 1))

end

end A188038.P14895518869234625815

namespace A188038

/-- `xor(A188037(n+1), A285076(n+1))` -/
def P14895518869234625815.Spec : Prop :=
  ∀ n, P14895518869234625815.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P6144328727750440398

`abs(Δ[A285076(n+1)])`
-/

namespace A188038.P6144328727750440398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188038.P6144328727750440398

namespace A188038

/-- `abs(Δ[A285076(n+1)])` -/
def P6144328727750440398.Spec : Prop :=
  ∀ n, P6144328727750440398.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P10616175725855877820

`A000045(Δ[A285076(n+1)]²)`
-/

namespace A188038.P10616175725855877820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A188038.P10616175725855877820

namespace A188038

/-- `A000045(Δ[A285076(n+1)]²)` -/
def P10616175725855877820.Spec : Prop :=
  ∀ n, P10616175725855877820.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P7539490876581359424

`A000196(Δ[A285076(n+1)]²)`
-/

namespace A188038.P7539490876581359424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A188038.P7539490876581359424

namespace A188038

/-- `A000196(Δ[A285076(n+1)]²)` -/
def P7539490876581359424.Spec : Prop :=
  ∀ n, P7539490876581359424.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P2211187026251116628

`A188044(A188041(n+2)+n+1)`
-/

namespace A188038.P2211187026251116628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (A188041 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188038.P2211187026251116628

namespace A188038

/-- `A188044(A188041(n+2)+n+1)` -/
def P2211187026251116628.Spec : Prop :=
  ∀ n, P2211187026251116628.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P2796377331856018496

`char[2*A144611(n)+n]`
-/

namespace A188038.P2796377331856018496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144611 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188038.P2796377331856018496

namespace A188038

/-- `char[2*A144611(n)+n]` -/
def P2796377331856018496.Spec : Prop :=
  ∀ n, (P2796377331856018496.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P11592551185501230907

`char[and(2, A006337(n+1))+n]`
-/

namespace A188038.P11592551185501230907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006337 (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188038.P11592551185501230907

namespace A188038

/-- `char[and(2, A006337(n+1))+n]` -/
def P11592551185501230907.Spec : Prop :=
  ∀ n, (P11592551185501230907.a n : ℤ) = A188038 (n + 1)

end A188038

/-! ## A188038.P7766991583188573049

`A188395(A004279(n+1))`
-/

namespace A188038.P7766991583188573049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188395 (A004279 (n + 1)).toNat

end

end A188038.P7766991583188573049

namespace A188038

/-- `A188395(A004279(n+1))` -/
def P7766991583188573049.Spec : Prop :=
  ∀ n, P7766991583188573049.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P1090035874153705200

`A188318(2*(n+1))`
-/

namespace A188038.P1090035874153705200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (2 * (n + 1))

end

end A188038.P1090035874153705200

namespace A188038

/-- `A188318(2*(n+1))` -/
def P1090035874153705200.Spec : Prop :=
  ∀ n, P1090035874153705200.a n = A188038 (n + 1)

end A188038

/-! ## A188038.P11412515268778117632

`A285076(A080763(A285075(n+1))+n)`
-/

namespace A188038.P11412515268778117632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (A080763 (A285075 (n + 1)).toNat + (n : ℤ)).toNat

end

end A188038.P11412515268778117632

namespace A188038

/-- `A285076(A080763(A285075(n+1))+n)` -/
def P11412515268778117632.Spec : Prop :=
  ∀ n, P11412515268778117632.a n = A188038 (n + 1)

end A188038

/-!
# A188039: Positions of 0 in A188038; complement of A188040.

The programs for A188039, the canonical program `A188039.P6897024611790570224` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188039 has offset 1).

The definition of A188039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188039.P6897024611790570224

`2*comp[ceil(n*sqrt(2))]-n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188039

/-- `2*comp[ceil(n*sqrt(2))]-n` -/
def P6897024611790570224.Spec : Prop :=
  ∀ n, P6897024611790570224.a n = A188039 (n + 1)

theorem P6897024611790570224.correct : P6897024611790570224.Spec := by
  intro n
  simp only [A188039, Nat.add_sub_cancel]

end A188039

/-! ## A188039.P6561727728564399993

`A187971(A001951(n)+1)`
-/

namespace A188039.P6561727728564399993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (A001951 n + 1).toNat

end

end A188039.P6561727728564399993

namespace A188039

/-- `A187971(A001951(n)+1)` -/
def P6561727728564399993.Spec : Prop :=
  ∀ n, P6561727728564399993.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P9005972900312300580

`A187971(A097508(n)+1+n)`
-/

namespace A188039.P9005972900312300580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (A097508 n + 1 + (n : ℤ)).toNat

end

end A188039.P9005972900312300580

namespace A188039

/-- `A187971(A097508(n)+1+n)` -/
def P9005972900312300580.Spec : Prop :=
  ∀ n, P9005972900312300580.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P350663818440484026

`A188045(Δ[n²])`
-/

namespace A188039.P350663818440484026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A188039.P350663818440484026

namespace A188039

/-- `A188045(Δ[n²])` -/
def P350663818440484026.Spec : Prop :=
  ∀ n, P350663818440484026.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P10122943614925049667

`A188319(Δ[n²])/2`
-/

namespace A188039.P10122943614925049667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188319 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A188039.P10122943614925049667

namespace A188039

/-- `A188319(Δ[n²])/2` -/
def P10122943614925049667.Spec : Prop :=
  ∀ n, P10122943614925049667.a n = (A188039 (n + 1) : ℚ)

end A188039

/-! ## A188039.P657157752267122682

`∩[A188045(n+1)-2, A188045(n+1)]`
-/

namespace A188039.P657157752267122682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188039.P657157752267122682

namespace A188039

/-- `∩[A188045(n+1)-2, A188045(n+1)]` -/
def P657157752267122682.Spec : Prop :=
  ∀ n, (P657157752267122682.a n : ℤ) = A188039 (n + 1)

end A188039

/-! ## A188039.P3810709578332696556

`A003151(A285075(n+1)-1)`
-/

namespace A188039.P3810709578332696556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A285075 (n + 1) - 1).toNat

end

end A188039.P3810709578332696556

namespace A188039

/-- `A003151(A285075(n+1)-1)` -/
def P3810709578332696556.Spec : Prop :=
  ∀ n, P3810709578332696556.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P12836230703413764806

`A003151(A336109(2*n+1))`
-/

namespace A188039.P12836230703413764806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A336109 (2 * n + 1)).toNat

end

end A188039.P12836230703413764806

namespace A188039

/-- `A003151(A336109(2*n+1))` -/
def P12836230703413764806.Spec : Prop :=
  ∀ n, P12836230703413764806.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P5478734375481995381

`A003151(A001951(n)+1+n)`
-/

namespace A188039.P5478734375481995381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A001951 n + 1 + (n : ℤ)).toNat

end

end A188039.P5478734375481995381

namespace A188039

/-- `A003151(A001951(n)+1+n)` -/
def P5478734375481995381.Spec : Prop :=
  ∀ n, P5478734375481995381.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P14098104542972747525

`A003153(A001951(n)+1+n)`
-/

namespace A188039.P14098104542972747525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (A001951 n + 1 + (n : ℤ)).toNat

end

end A188039.P14098104542972747525

namespace A188039

/-- `A003153(A001951(n)+1+n)` -/
def P14098104542972747525.Spec : Prop :=
  ∀ n, P14098104542972747525.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P17172222563306155865

`A026252(A001951(n)+1+n)`
-/

namespace A188039.P17172222563306155865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A001951 n + 1 + (n : ℤ)).toNat

end

end A188039.P17172222563306155865

namespace A188039

/-- `A026252(A001951(n)+1+n)` -/
def P17172222563306155865.Spec : Prop :=
  ∀ n, P17172222563306155865.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P13235703775240335564

`A082845(A001951(n)+1+n)`
-/

namespace A188039.P13235703775240335564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (A001951 n + 1 + (n : ℤ)).toNat

end

end A188039.P13235703775240335564

namespace A188039

/-- `A082845(A001951(n)+1+n)` -/
def P13235703775240335564.Spec : Prop :=
  ∀ n, P13235703775240335564.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P7161207423541888748

`A003151(A083088(2*n)-n)`
-/

namespace A188039.P7161207423541888748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A083088 (2 * n) - (n : ℤ)).toNat

end

end A188039.P7161207423541888748

namespace A188039

/-- `A003151(A083088(2*n)-n)` -/
def P7161207423541888748.Spec : Prop :=
  ∀ n, P7161207423541888748.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P2291015768314177849

`A003151(A049472(2*n)+n+1)`
-/

namespace A188039.P2291015768314177849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A049472 (2 * n) + (n + 1 : ℤ)).toNat

end

end A188039.P2291015768314177849

namespace A188039

/-- `A003151(A049472(2*n)+n+1)` -/
def P2291015768314177849.Spec : Prop :=
  ∀ n, P2291015768314177849.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P5429638220792349069

`A003151(A097508(n)+2*n+1)`
-/

namespace A188039.P5429638220792349069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A097508 n + (2 * n + 1 : ℤ)).toNat

end

end A188039.P5429638220792349069

namespace A188039

/-- `A003151(A097508(n)+2*n+1)` -/
def P5429638220792349069.Spec : Prop :=
  ∀ n, P5429638220792349069.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P1179789566587349079

`A080652(A097508(n)+2*n+1)`
-/

namespace A188039.P1179789566587349079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (A097508 n + (2 * n + 1 : ℤ)).toNat

end

end A188039.P1179789566587349079

namespace A188039

/-- `A080652(A097508(n)+2*n+1)` -/
def P1179789566587349079.Spec : Prop :=
  ∀ n, P1179789566587349079.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P2511259690913334793

`A187978(A191405(n))`
-/

namespace A188039.P2511259690913334793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (A191405 n).toNat

end

end A188039.P2511259690913334793

namespace A188039

/-- `A187978(A191405(n))` -/
def P2511259690913334793.Spec : Prop :=
  ∀ n, P2511259690913334793.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P6902448669761230178

`filter[A188045(2*n+1), A187967(#)]`
-/

namespace A188039.P6902448669761230178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A188039.P6902448669761230178

namespace A188039

/-- `filter[A188045(2*n+1), A187967(#)]` -/
def P6902448669761230178.Spec : Prop :=
  ∀ n, P6902448669761230178.a n = A188039 (n + 1)

end A188039

/-! ## A188039.P7104336650207431510

`A080755(A083051(n))`
-/

namespace A188039.P7104336650207431510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A083051 n).toNat

end

end A188039.P7104336650207431510

namespace A188039

/-- `A080755(A083051(n))` -/
def P7104336650207431510.Spec : Prop :=
  ∀ n, P7104336650207431510.a n = A188039 (n + 1)

end A188039

/-!
# A188040: Positions of 1 in A188038; complement of A188039.

The programs for A188040, the canonical program `A188040.P2755953208103886192` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188040 has offset 1).

The definition of A188040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188040.P5891031417984904009

`ceil(∑[sqrt(n%2+1)])`
-/

namespace A188040.P5891031417984904009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n % 2 + 1 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188040.P5891031417984904009

namespace A188040

/-- `ceil(∑[sqrt(n%2+1)])` -/
def P5891031417984904009.Spec : Prop :=
  ∀ n, P5891031417984904009.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P7291582596081363227

`ceil(∑[sqrt(gcd(2, n+1))])`
-/

namespace A188040.P7291582596081363227
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 2 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188040.P7291582596081363227

namespace A188040

/-- `ceil(∑[sqrt(gcd(2, n+1))])` -/
def P7291582596081363227.Spec : Prop :=
  ∀ n, P7291582596081363227.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P663389140000465136

`ceil(∑[sqrt(A000034(n))])`
-/

namespace A188040.P663389140000465136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000034 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188040.P663389140000465136

namespace A188040

/-- `ceil(∑[sqrt(A000034(n))])` -/
def P663389140000465136.Spec : Prop :=
  ∀ n, P663389140000465136.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P11941604121816921544

`comp[A276879(n+1)]+1`
-/

namespace A188040.P11941604121816921544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188040.P11941604121816921544

namespace A188040

/-- `comp[A276879(n+1)]+1` -/
def P11941604121816921544.Spec : Prop :=
  ∀ n, (P11941604121816921544.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P5632489981522689027

`ceil(∑[sqrt(A040001(n+1))])`
-/

namespace A188040.P5632489981522689027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A040001 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188040.P5632489981522689027

namespace A188040

/-- `ceil(∑[sqrt(A040001(n+1))])` -/
def P5632489981522689027.Spec : Prop :=
  ∀ n, P5632489981522689027.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P4391739727349914296

`ceil(∑[sqrt(A134451(n+1))])`
-/

namespace A188040.P4391739727349914296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134451 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188040.P4391739727349914296

namespace A188040

/-- `ceil(∑[sqrt(A134451(n+1))])` -/
def P4391739727349914296.Spec : Prop :=
  ∀ n, P4391739727349914296.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P8915416718009393302

`comp[A188039(n+1)-1]+1`
-/

namespace A188040.P8915416718009393302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188040.P8915416718009393302

namespace A188040

/-- `comp[A188039(n+1)-1]+1` -/
def P8915416718009393302.Spec : Prop :=
  ∀ n, (P8915416718009393302.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P489540867272399182

`∪[A003152(n+1), A285078(n+1)]`
-/

namespace A188040.P489540867272399182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P489540867272399182

namespace A188040

/-- `∪[A003152(n+1), A285078(n+1)]` -/
def P489540867272399182.Spec : Prop :=
  ∀ n, (P489540867272399182.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P2679892968479546457

`∪[A080754(n+1), A285078(n+1)]`
-/

namespace A188040.P2679892968479546457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P2679892968479546457

namespace A188040

/-- `∪[A080754(n+1), A285078(n+1)]` -/
def P2679892968479546457.Spec : Prop :=
  ∀ n, (P2679892968479546457.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P10600068134945830582

`∪[A187970(n+1), A285078(n+1)]`
-/

namespace A188040.P10600068134945830582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P10600068134945830582

namespace A188040

/-- `∪[A187970(n+1), A285078(n+1)]` -/
def P10600068134945830582.Spec : Prop :=
  ∀ n, (P10600068134945830582.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P1453131709336851372

`∪[A187977(n+1), A285078(n+1)]`
-/

namespace A188040.P1453131709336851372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P1453131709336851372

namespace A188040

/-- `∪[A187977(n+1), A285078(n+1)]` -/
def P1453131709336851372.Spec : Prop :=
  ∀ n, (P1453131709336851372.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P17932079916827865667

`∪[A188046(n+1), A285078(n+1)]`
-/

namespace A188040.P17932079916827865667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P17932079916827865667

namespace A188040

/-- `∪[A188046(n+1), A285078(n+1)]` -/
def P17932079916827865667.Spec : Prop :=
  ∀ n, (P17932079916827865667.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P14299574501282640531

`∪[A188046(n+2)-2, A188046(n+2)]`
-/

namespace A188040.P14299574501282640531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188040.P14299574501282640531

namespace A188040

/-- `∪[A188046(n+2)-2, A188046(n+2)]` -/
def P14299574501282640531.Spec : Prop :=
  ∀ n, (P14299574501282640531.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P2755953208103886192

`A003152(n+1)-A049472(A049472(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188040

/-- `A003152(n+1)-A049472(A049472(n+1))` -/
def P2755953208103886192.Spec : Prop :=
  ∀ n, P2755953208103886192.a n = A188040 (n + 1)

theorem P2755953208103886192.correct : P2755953208103886192.Spec := by
  intro n
  simp only [A188040, Nat.add_sub_cancel]

end A188040

/-! ## A188040.P9955103021095716958

`A336109(A065475(n+1))`
-/

namespace A188040.P9955103021095716958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A065475 (n + 1)).toNat

end

end A188040.P9955103021095716958

namespace A188040

/-- `A336109(A065475(n+1))` -/
def P9955103021095716958.Spec : Prop :=
  ∀ n, P9955103021095716958.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P13729142040081867017

`A336109(A181440(n+2))`
-/

namespace A188040.P13729142040081867017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A181440 (n + 2)).toNat

end

end A188040.P13729142040081867017

namespace A188040

/-- `A336109(A181440(n+2))` -/
def P13729142040081867017.Spec : Prop :=
  ∀ n, P13729142040081867017.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P14923198391223778179

`A336109(A184985(n+2))`
-/

namespace A188040.P14923198391223778179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A184985 (n + 2)).toNat

end

end A188040.P14923198391223778179

namespace A188040

/-- `A336109(A184985(n+2))` -/
def P14923198391223778179.Spec : Prop :=
  ∀ n, P14923198391223778179.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P14621585576952118295

`A336109(A103517(n)-n)`
-/

namespace A188040.P14621585576952118295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (A103517 n - (n : ℤ)).toNat

end

end A188040.P14621585576952118295

namespace A188040

/-- `A336109(A103517(n)-n)` -/
def P14621585576952118295.Spec : Prop :=
  ∀ n, P14621585576952118295.a n = A188040 (n + 1)

end A188040

/-! ## A188040.P9594362935845790353

`filter[n+1, A188038(#)]`
-/

namespace A188040.P9594362935845790353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188038 (f1 j) = 1) n)

end

end A188040.P9594362935845790353

namespace A188040

/-- `filter[n+1, A188038(#)]` -/
def P9594362935845790353.Spec : Prop :=
  ∀ n, (P9594362935845790353.a n : ℤ) = A188040 (n + 1)

end A188040

/-! ## A188040.P16981732690551250992

`eq[1, A188038(n+1)]+1`
-/

namespace A188040.P16981732690551250992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188040.P16981732690551250992

namespace A188040

/-- `eq[1, A188038(n+1)]+1` -/
def P16981732690551250992.Spec : Prop :=
  ∀ n, (P16981732690551250992.a n : ℤ) = A188040 (n + 1)

end A188040

/-!
# A188041: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(2), k=3, [ ]=floor.

The programs for A188041, the canonical program `A188041.P15409242099086241299` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188041 has offset 1).

The definition of A188041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188041.P16938854779254370396

`char[A188043(n+1)-1]`
-/

namespace A188041.P16938854779254370396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188041.P16938854779254370396

namespace A188041

/-- `char[A188043(n+1)-1]` -/
def P16938854779254370396.Spec : Prop :=
  ∀ n, (P16938854779254370396.a n : ℤ) = A188041 (n + 1)

end A188041

/-! ## A188041.P12762499984418543617

`char[A003152(n+1)+2*floor((n+1)/2*sqrt(2))+n+3]`
-/

namespace A188041.P12762499984418543617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (2 * ⌊((n + 1 : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 3 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188041.P12762499984418543617

namespace A188041

/-- `char[A003152(n+1)+2*floor((n+1)/2*sqrt(2))+n+3]` -/
def P12762499984418543617.Spec : Prop :=
  ∀ n, (P12762499984418543617.a n : ℤ) = A188041 (n + 1)

end A188041

/-! ## A188041.P17497393962507137201

`char[A003151(A080755(n+1))]`
-/

namespace A188041.P17497393962507137201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A080755 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188041.P17497393962507137201

namespace A188041

/-- `char[A003151(A080755(n+1))]` -/
def P17497393962507137201.Spec : Prop :=
  ∀ n, (P17497393962507137201.a n : ℤ) = A188041 (n + 1)

end A188041

/-! ## A188041.P17114616062337794355

`char[A003151(A003152(n+1)+1)]`
-/

namespace A188041.P17114616062337794355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003152 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188041.P17114616062337794355

namespace A188041

/-- `char[A003151(A003152(n+1)+1)]` -/
def P17114616062337794355.Spec : Prop :=
  ∀ n, (P17114616062337794355.a n : ℤ) = A188041 (n + 1)

end A188041

/-! ## A188041.P1335712104554507120

`char[A285078(A097509(n+1)+n)]`
-/

namespace A188041.P1335712104554507120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (A097509 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188041.P1335712104554507120

namespace A188041

/-- `char[A285078(A097509(n+1)+n)]` -/
def P1335712104554507120.Spec : Prop :=
  ∀ n, (P1335712104554507120.a n : ℤ) = A188041 (n + 1)

end A188041

/-! ## A188041.P568909764837472899

`char[A285078(n+1)]*A188037(n+1)`
-/

namespace A188041.P568909764837472899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188037 (n + 1)

end

end A188041.P568909764837472899

namespace A188041

/-- `char[A285078(n+1)]*A188037(n+1)` -/
def P568909764837472899.Spec : Prop :=
  ∀ n, P568909764837472899.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P13480451617801225882

`char[A285078(n+1)]*A188038(n+1)`
-/

namespace A188041.P13480451617801225882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188038 (n + 1)

end

end A188041.P13480451617801225882

namespace A188041

/-- `char[A285078(n+1)]*A188038(n+1)` -/
def P13480451617801225882.Spec : Prop :=
  ∀ n, P13480451617801225882.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P10224582026226628037

`(1-A159684(n))*char[A285078(n+1)]`
-/

namespace A188041.P10224582026226628037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A159684 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188041.P10224582026226628037

namespace A188041

/-- `(1-A159684(n))*char[A285078(n+1)]` -/
def P10224582026226628037.Spec : Prop :=
  ∀ n, P10224582026226628037.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P120343487699478035

`and(char[A285078(n+1)], A006337(n+1))`
-/

namespace A188041.P120343487699478035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006337 (n + 1))

end

end A188041.P120343487699478035

namespace A188041

/-- `and(char[A285078(n+1)], A006337(n+1))` -/
def P120343487699478035.Spec : Prop :=
  ∀ n, P120343487699478035.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P15409242099086241299

`A188037(n+1-2*A188037(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188041

/-- `A188037(n+1-2*A188037(n+1))` -/
def P15409242099086241299.Spec : Prop :=
  ∀ n, P15409242099086241299.a n = A188041 (n + 1)

theorem P15409242099086241299.correct : P15409242099086241299.Spec := by
  intro n
  simp only [A188041, Nat.add_sub_cancel]

end A188041

/-! ## A188041.P5594953131773566453

`A188037(A187972(n+1)-A188037(n+1)+n)`
-/

namespace A188041.P5594953131773566453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A187972 (n + 1) - A188037 (n + 1) + (n : ℤ)).toNat

end

end A188041.P5594953131773566453

namespace A188041

/-- `A188037(A187972(n+1)-A188037(n+1)+n)` -/
def P5594953131773566453.Spec : Prop :=
  ∀ n, P5594953131773566453.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P9839902507869892868

`A188037(A285076(n+1)-A188037(n+1)+n)`
-/

namespace A188041.P9839902507869892868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A285076 (n + 1) - A188037 (n + 1) + (n : ℤ)).toNat

end

end A188041.P9839902507869892868

namespace A188041

/-- `A188037(A285076(n+1)-A188037(n+1)+n)` -/
def P9839902507869892868.Spec : Prop :=
  ∀ n, P9839902507869892868.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P14358125533063826094

`A188037(n+1)*A285076(A285076(n+1)+n)`
-/

namespace A188041.P14358125533063826094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) * A285076 (A285076 (n + 1) + (n : ℤ)).toNat

end

end A188041.P14358125533063826094

namespace A188041

/-- `A188037(n+1)*A285076(A285076(n+1)+n)` -/
def P14358125533063826094.Spec : Prop :=
  ∀ n, P14358125533063826094.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P11505318199233119166

`A144611(n+1)*A188044(n+2)`
-/

namespace A188041.P11505318199233119166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (n + 1) * A188044 (n + 2)

end

end A188041.P11505318199233119166

namespace A188041

/-- `A144611(n+1)*A188044(n+2)` -/
def P11505318199233119166.Spec : Prop :=
  ∀ n, P11505318199233119166.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P3462418299160123097

`A188037(n+1)*A188044(n+2)`
-/

namespace A188041.P3462418299160123097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) * A188044 (n + 2)

end

end A188041.P3462418299160123097

namespace A188041

/-- `A188037(n+1)*A188044(n+2)` -/
def P3462418299160123097.Spec : Prop :=
  ∀ n, P3462418299160123097.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P5670038086372375044

`A188037(n+2-A188044(n+2))`
-/

namespace A188041.P5670038086372375044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 ((n + 2 : ℤ) - A188044 (n + 2)).toNat

end

end A188041.P5670038086372375044

namespace A188041

/-- `A188037(n+2-A188044(n+2))` -/
def P5670038086372375044.Spec : Prop :=
  ∀ n, P5670038086372375044.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P9653709607487279065

`char[A285078(n+2)]*A285073(n+2)`
-/

namespace A188041.P9653709607487279065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285073 (n + 2)

end

end A188041.P9653709607487279065

namespace A188041

/-- `char[A285078(n+2)]*A285073(n+2)` -/
def P9653709607487279065.Spec : Prop :=
  ∀ n, P9653709607487279065.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P6361270831139913254

`char[A285078(n+2)]*A285076(n+2)`
-/

namespace A188041.P6361270831139913254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285076 (n + 2)

end

end A188041.P6361270831139913254

namespace A188041

/-- `char[A285078(n+2)]*A285076(n+2)` -/
def P6361270831139913254.Spec : Prop :=
  ∀ n, P6361270831139913254.a n = A188041 (n + 1)

end A188041

/-! ## A188041.P2813075909662396601

`A188044(n+2)-A187972(n+1)*A188044(n+2)`
-/

namespace A188041.P2813075909662396601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 2) - A187972 (n + 1) * A188044 (n + 2)

end

end A188041.P2813075909662396601

namespace A188041

/-- `A188044(n+2)-A187972(n+1)*A188044(n+2)` -/
def P2813075909662396601.Spec : Prop :=
  ∀ n, P2813075909662396601.a n = A188041 (n + 1)

end A188041

/-!
# A188042: Positions of 0 in A188041; complement of A188043.

The programs for A188042, the canonical program `A188042.P9269258026017260983` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188042 has offset 1).

The definition of A188042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188042.P9269258026017260983

`comp[A187971(n+1)+2]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188042

/-- `comp[A187971(n+1)+2]+1` -/
def P9269258026017260983.Spec : Prop :=
  ∀ n, (P9269258026017260983.a n : ℤ) = A188042 (n + 1)

theorem P9269258026017260983.correct : P9269258026017260983.Spec := by
  intro n
  simp only [A188042, Nat.add_sub_cancel]

end A188042

/-! ## A188042.P3040321430857634528

`∪[A083088(n)+2, A083088(n)]`
-/

namespace A188042.P3040321430857634528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188042.P3040321430857634528

namespace A188042

/-- `∪[A083088(n)+2, A083088(n)]` -/
def P3040321430857634528.Spec : Prop :=
  ∀ n, (P3040321430857634528.a n : ℤ) = A188042 (n + 1)

end A188042

/-! ## A188042.P15927070079469423706

`a(n-1)+A188041(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A188042.P15927070079469423706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A188041 (a (n - 1) + 1).toNat + 1)

end

end A188042.P15927070079469423706

namespace A188042

/-- `a(n-1)+A188041(a(n-1)+1)+1` -/
def P15927070079469423706.Spec : Prop :=
  ∀ n, P15927070079469423706.a n = A188042 (n + 1)

end A188042

/-! ## A188042.P1594196215297868778

`eq[1, A188041(n+1)+1]+1`
-/

namespace A188042.P1594196215297868778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188042.P1594196215297868778

namespace A188042

/-- `eq[1, A188041(n+1)+1]+1` -/
def P1594196215297868778.Spec : Prop :=
  ∀ n, (P1594196215297868778.a n : ℤ) = A188042 (n + 1)

end A188042

/-! ## A188042.P13234931332160957797

`eq[A188037(n+1), A188044(n+1)]`
-/

namespace A188042.P13234931332160957797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188042.P13234931332160957797

namespace A188042

/-- `eq[A188037(n+1), A188044(n+1)]` -/
def P13234931332160957797.Spec : Prop :=
  ∀ n, (P13234931332160957797.a n : ℤ) = A188042 (n + 1)

end A188042

/-! ## A188042.P3129763002562281383

`record[n+1-A015833(n+1)*A188041(n+1)]`
-/

namespace A188042.P3129763002562281383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A015833 (n + 1) * A188041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188042.P3129763002562281383

namespace A188042

/-- `record[n+1-A015833(n+1)*A188041(n+1)]` -/
def P3129763002562281383.Spec : Prop :=
  ∀ n, P3129763002562281383.a n = A188042 (n + 1)

end A188042

/-! ## A188042.P13843528650549417573

`comp[(floor(n*(sqrt(2)+2)/2)+2)*A188297(n+1)]`
-/

namespace A188042.P13843528650549417573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℝ) * ((Real.sqrt (2 : ℝ) + 2) / 2)⌋ + 2) * A188297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188042.P13843528650549417573

namespace A188042

/-- `comp[(floor(n*(sqrt(2)+2)/2)+2)*A188297(n+1)]` -/
def P13843528650549417573.Spec : Prop :=
  ∀ n, (P13843528650549417573.a n : ℤ) = A188042 (n + 1)

end A188042

/-! ## A188042.P14249826706751994457

`comp[A188297(n+1)*A285074(n+1)]`
-/

namespace A188042.P14249826706751994457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) * A285074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188042.P14249826706751994457

namespace A188042

/-- `comp[A188297(n+1)*A285074(n+1)]` -/
def P14249826706751994457.Spec : Prop :=
  ∀ n, (P14249826706751994457.a n : ℤ) = A188042 (n + 1)

end A188042

/-! ## A188042.P9662738025666406062

`comp[A188297(n+1)*A285077(n+1)]`
-/

namespace A188042.P9662738025666406062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) * A285077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188042.P9662738025666406062

namespace A188042

/-- `comp[A188297(n+1)*A285077(n+1)]` -/
def P9662738025666406062.Spec : Prop :=
  ∀ n, (P9662738025666406062.a n : ℤ) = A188042 (n + 1)

end A188042

/-!
# A188043: Positions of 1 in A188041; complement of A188042.

The programs for A188043, the canonical program `A188043.P3652689777073238464` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188043 has offset 1).

The definition of A188043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188043.P3652689777073238464

`ceil((n+1)/(2-sqrt(2)))+2*floor((n+1)/2*sqrt(2))+n+3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188043

/-- `ceil((n+1)/(2-sqrt(2)))+2*floor((n+1)/2*sqrt(2))+n+3` -/
def P3652689777073238464.Spec : Prop :=
  ∀ n, P3652689777073238464.a n = A188043 (n + 1)

theorem P3652689777073238464.correct : P3652689777073238464.Spec := by
  intro n
  simp only [A188043, Nat.add_sub_cancel]

end A188043

/-! ## A188043.P9411753213458654970

`∑[6/(char[A001952(n+1)]+1)-1]`
-/

namespace A188043.P9411753213458654970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188043.P9411753213458654970

namespace A188043

/-- `∑[6/(char[A001952(n+1)]+1)-1]` -/
def P9411753213458654970.Spec : Prop :=
  ∀ n, P9411753213458654970.a n = (A188043 (n + 1) : ℚ)

end A188043

/-! ## A188043.P260870936963746042

`∑[Δ[A285074(n+1)]²+1]`
-/

namespace A188043.P260870936963746042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188043.P260870936963746042

namespace A188043

/-- `∑[Δ[A285074(n+1)]²+1]` -/
def P260870936963746042.Spec : Prop :=
  ∀ n, P260870936963746042.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P13974433662034023195

`A026253(A080755(n+1))`
-/

namespace A188043.P13974433662034023195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (A080755 (n + 1)).toNat

end

end A188043.P13974433662034023195

namespace A188043

/-- `A026253(A080755(n+1))` -/
def P13974433662034023195.Spec : Prop :=
  ∀ n, P13974433662034023195.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P5149843880932422859

`A026253(A083088(n+1))`
-/

namespace A188043.P5149843880932422859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (A083088 (n + 1)).toNat

end

end A188043.P5149843880932422859

namespace A188043

/-- `A026253(A083088(n+1))` -/
def P5149843880932422859.Spec : Prop :=
  ∀ n, P5149843880932422859.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P8239423340769796826

`A026253(A003152(n+1)+1)`
-/

namespace A188043.P8239423340769796826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (A003152 (n + 1) + 1).toNat

end

end A188043.P8239423340769796826

namespace A188043

/-- `A026253(A003152(n+1)+1)` -/
def P8239423340769796826.Spec : Prop :=
  ∀ n, P8239423340769796826.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P13765518586569481337

`A080754(A003152(n+1)+1)`
-/

namespace A188043.P13765518586569481337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A003152 (n + 1) + 1).toNat

end

end A188043.P13765518586569481337

namespace A188043

/-- `A080754(A003152(n+1)+1)` -/
def P13765518586569481337.Spec : Prop :=
  ∀ n, P13765518586569481337.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P3190802328850603021

`A080754(A049474(n+1)+n+1)`
-/

namespace A188043.P3190802328850603021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A049474 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188043.P3190802328850603021

namespace A188043

/-- `A080754(A049474(n+1)+n+1)` -/
def P3190802328850603021.Spec : Prop :=
  ∀ n, P3190802328850603021.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P430306409390607845

`∩[A080754(n+1)+2, A080754(n+1)]`
-/

namespace A188043.P430306409390607845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188043.P430306409390607845

namespace A188043

/-- `∩[A080754(n+1)+2, A080754(n+1)]` -/
def P430306409390607845.Spec : Prop :=
  ∀ n, (P430306409390607845.a n : ℤ) = A188043 (n + 1)

end A188043

/-! ## A188043.P17122974922203781308

`∩[A285078(n+1)+1, A327257(n+1)]`
-/

namespace A188043.P17122974922203781308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188043.P17122974922203781308

namespace A188043

/-- `∩[A285078(n+1)+1, A327257(n+1)]` -/
def P17122974922203781308.Spec : Prop :=
  ∀ n, (P17122974922203781308.a n : ℤ) = A188043 (n + 1)

end A188043

/-! ## A188043.P1799137015700855334

`A003152(A188299(n+1))`
-/

namespace A188043.P1799137015700855334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188299 (n + 1)).toNat

end

end A188043.P1799137015700855334

namespace A188043

/-- `A003152(A188299(n+1))` -/
def P1799137015700855334.Spec : Prop :=
  ∀ n, P1799137015700855334.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P3961389035196157843

`A003152(A188376(n+1)+2)`
-/

namespace A188043.P3961389035196157843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A188376 (n + 1) + 2).toNat

end

end A188043.P3961389035196157843

namespace A188043

/-- `A003152(A188376(n+1)+2)` -/
def P3961389035196157843.Spec : Prop :=
  ∀ n, P3961389035196157843.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P14838996960379670467

`A285077(A188376(n+1)+2)`
-/

namespace A188043.P14838996960379670467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (A188376 (n + 1) + 2).toNat

end

end A188043.P14838996960379670467

namespace A188043

/-- `A285077(A188376(n+1)+2)` -/
def P14838996960379670467.Spec : Prop :=
  ∀ n, P14838996960379670467.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P4225534112166429991

`A285074(A285074(n+2)+A049472(n+1))`
-/

namespace A188043.P4225534112166429991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (A285074 (n + 2) + A049472 (n + 1)).toNat

end

end A188043.P4225534112166429991

namespace A188043

/-- `A285074(A285074(n+2)+A049472(n+1))` -/
def P4225534112166429991.Spec : Prop :=
  ∀ n, P4225534112166429991.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P11222617203225879463

`A285077(A285077(n+2)+A049472(n+1))`
-/

namespace A188043.P11222617203225879463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (A285077 (n + 2) + A049472 (n + 1)).toNat

end

end A188043.P11222617203225879463

namespace A188043

/-- `A285077(A285077(n+2)+A049472(n+1))` -/
def P11222617203225879463.Spec : Prop :=
  ∀ n, P11222617203225879463.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P5632977574049115650

`filter[n+1, A188041(#)]`
-/

namespace A188043.P5632977574049115650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188041 (f1 j) = 1) n)

end

end A188043.P5632977574049115650

namespace A188043

/-- `filter[n+1, A188041(#)]` -/
def P5632977574049115650.Spec : Prop :=
  ∀ n, (P5632977574049115650.a n : ℤ) = A188043 (n + 1)

end A188043

/-! ## A188043.P15302102070417472278

`A009005(A187971(n+1))`
-/

namespace A188043.P15302102070417472278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A187971 (n + 1)).toNat

end

end A188043.P15302102070417472278

namespace A188043

/-- `A009005(A187971(n+1))` -/
def P15302102070417472278.Spec : Prop :=
  ∀ n, P15302102070417472278.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P4344355049567935478

`eq[A144611(n), A188044(n+1)]`
-/

namespace A188043.P4344355049567935478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188043.P4344355049567935478

namespace A188043

/-- `eq[A144611(n), A188044(n+1)]` -/
def P4344355049567935478.Spec : Prop :=
  ∀ n, (P4344355049567935478.a n : ℤ) = A188043 (n + 1)

end A188043

/-! ## A188043.P14825762886772374371

`A026249(A188319(n+2))`
-/

namespace A188043.P14825762886772374371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A188319 (n + 2)).toNat

end

end A188043.P14825762886772374371

namespace A188043

/-- `A026249(A188319(n+2))` -/
def P14825762886772374371.Spec : Prop :=
  ∀ n, P14825762886772374371.a n = A188043 (n + 1)

end A188043

/-! ## A188043.P8548007298978702722

`A060762(A188383(n+1))`
-/

namespace A188043.P8548007298978702722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (A188383 (n + 1)).toNat

end

end A188043.P8548007298978702722

namespace A188043

/-- `A060762(A188383(n+1))` -/
def P8548007298978702722.Spec : Prop :=
  ∀ n, P8548007298978702722.a n = A188043 (n + 1)

end A188043

/-!
# A188044: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=sqrt(2), k=4, [ ]=floor.

The programs for A188044, the canonical program `A188044.P4047038708681566993` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188044 has offset 1).

The definition of A188044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188044.P14235029947693862311

`1-char[A188045(n+1)-1]`
-/

namespace A188044.P14235029947693862311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188044.P14235029947693862311

namespace A188044

/-- `1-char[A188045(n+1)-1]` -/
def P14235029947693862311.Spec : Prop :=
  ∀ n, P14235029947693862311.a n = A188044 (n + 1)

end A188044

/-! ## A188044.P4047038708681566993

`and(1, Δ[n-A187969(a(n-1)+1)])` with `a(0)=2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188044

/-- `and(1, Δ[n-A187969(a(n-1)+1)])` -/
def P4047038708681566993.Spec : Prop :=
  ∀ n, P4047038708681566993.a n = A188044 (n + 1)

theorem P4047038708681566993.correct : P4047038708681566993.Spec := by
  intro n
  simp only [A188044, Nat.add_sub_cancel]

end A188044

/-! ## A188044.P13309868793788527988

`char[4*A144611(n)+n]`
-/

namespace A188044.P13309868793788527988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A144611 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188044.P13309868793788527988

namespace A188044

/-- `char[4*A144611(n)+n]` -/
def P13309868793788527988.Spec : Prop :=
  ∀ n, (P13309868793788527988.a n : ℤ) = A188044 (n + 1)

end A188044

/-! ## A188044.P1029325024962022780

`char[4*char[A003152(n+1)]+n]`
-/

namespace A188044.P1029325024962022780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188044.P1029325024962022780

namespace A188044

/-- `char[4*char[A003152(n+1)]+n]` -/
def P1029325024962022780.Spec : Prop :=
  ∀ n, (P1029325024962022780.a n : ℤ) = A188044 (n + 1)

end A188044

/-! ## A188044.P9705612201035219589

`A286665(A286666(n+1)-10%A000040(n+1)+1)`
-/

namespace A188044.P9705612201035219589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286665 (A286666 (n + 1) - Int.tmod 10 (A000040 (n + 1)) + 1).toNat

end

end A188044.P9705612201035219589

namespace A188044

/-- `A286665(A286666(n+1)-10%A000040(n+1)+1)` -/
def P9705612201035219589.Spec : Prop :=
  ∀ n, P9705612201035219589.a n = A188044 (n + 1)

end A188044

/-! ## A188044.P14510759637534975515

`A008683(Δ[A352339(n)])`
-/

namespace A188044.P14510759637534975515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A188044.P14510759637534975515

namespace A188044

/-- `A008683(Δ[A352339(n)])` -/
def P14510759637534975515.Spec : Prop :=
  ∀ n, P14510759637534975515.a n = A188044 (n + 1)

end A188044

/-! ## A188044.P10477198570525640028

`A008683(A352339(n+1)-A352339(n))`
-/

namespace A188044.P10477198570525640028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A352339 (n + 1) - A352339 n).toNat

end

end A188044.P10477198570525640028

namespace A188044

/-- `A008683(A352339(n+1)-A352339(n))` -/
def P10477198570525640028.Spec : Prop :=
  ∀ n, P10477198570525640028.a n = A188044 (n + 1)

end A188044

/-! ## A188044.P17073117884542806458

`A285076(A003056((n+3)²)+n+1)`
-/

namespace A188044.P17073117884542806458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (A003056 ((n + 3) ^ 2) + (n : ℤ) + 1).toNat

end

end A188044.P17073117884542806458

namespace A188044

/-- `A285076(A003056((n+3)²)+n+1)` -/
def P17073117884542806458.Spec : Prop :=
  ∀ n, P17073117884542806458.a n = A188044 (n + 1)

end A188044

/-! ## A188044.P10714398065108562807

`A083035(A000196(A001105(n+1)+n+1))`
-/

namespace A188044.P10714398065108562807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A000196 (A001105 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A188044.P10714398065108562807

namespace A188044

/-- `A083035(A000196(A001105(n+1)+n+1))` -/
def P10714398065108562807.Spec : Prop :=
  ∀ n, P10714398065108562807.a n = A188044 (n + 1)

end A188044

/-!
# A188045: Positions of 0 in A188044; complement of A188046.

The programs for A188045, the canonical program `A188045.P18393744390427798970` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188045 has offset 1).

The definition of A188045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188045.P2173380464772050575

`A336109(n+1)+A188298(n+1)`
-/

namespace A188045.P2173380464772050575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336109 (n + 1) + A188298 (n + 1)

end

end A188045.P2173380464772050575

namespace A188045

/-- `A336109(n+1)+A188298(n+1)` -/
def P2173380464772050575.Spec : Prop :=
  ∀ n, P2173380464772050575.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P6297649706253172010

`A004526(n)+2*A336109(n+1)`
-/

namespace A188045.P6297649706253172010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 2 * A336109 (n + 1)

end

end A188045.P6297649706253172010

namespace A188045

/-- `A004526(n)+2*A336109(n+1)` -/
def P6297649706253172010.Spec : Prop :=
  ∀ n, P6297649706253172010.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P18393744390427798970

`2*A188298(n+1)-A004526(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188045

/-- `2*A188298(n+1)-A004526(n)` -/
def P18393744390427798970.Spec : Prop :=
  ∀ n, P18393744390427798970.a n = A188045 (n + 1)

theorem P18393744390427798970.correct : P18393744390427798970.Spec := by
  intro n
  simp only [A188045, Nat.add_sub_cancel]

end A188045

/-! ## A188045.P16297000267276729027

`∪[A188039(n+1)+2, A188039(n+1)]`
-/

namespace A188045.P16297000267276729027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188045.P16297000267276729027

namespace A188045

/-- `∪[A188039(n+1)+2, A188039(n+1)]` -/
def P16297000267276729027.Spec : Prop :=
  ∀ n, (P16297000267276729027.a n : ℤ) = A188045 (n + 1)

end A188045

/-! ## A188045.P13815799541350142029

`A008619(n)+A005408(A188298(n+1)-A008619(n))`
-/

namespace A188045.P13815799541350142029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A005408 (A188298 (n + 1) - A008619 n).toNat

end

end A188045.P13815799541350142029

namespace A188045

/-- `A008619(n)+A005408(A188298(n+1)-A008619(n))` -/
def P13815799541350142029.Spec : Prop :=
  ∀ n, P13815799541350142029.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P10765882537480117599

`A003151(A336109(n+1))`
-/

namespace A188045.P10765882537480117599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A336109 (n + 1)).toNat

end

end A188045.P10765882537480117599

namespace A188045

/-- `A003151(A336109(n+1))` -/
def P10765882537480117599.Spec : Prop :=
  ∀ n, P10765882537480117599.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P5865485944582825715

`A005843(A188298(n+1)-A004526(n))+A004526(n)`
-/

namespace A188045.P5865485944582825715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A188298 (n + 1) - A004526 n).toNat + A004526 n

end

end A188045.P5865485944582825715

namespace A188045

/-- `A005843(A188298(n+1)-A004526(n))+A004526(n)` -/
def P5865485944582825715.Spec : Prop :=
  ∀ n, P5865485944582825715.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P13120792790031165985

`A080755(A188298(n+1))`
-/

namespace A188045.P13120792790031165985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A188298 (n + 1)).toNat

end

end A188045.P13120792790031165985

namespace A188045

/-- `A080755(A188298(n+1))` -/
def P13120792790031165985.Spec : Prop :=
  ∀ n, P13120792790031165985.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P3421952146294636000

`A005843(A188298(n+1))-A004526(n)`
-/

namespace A188045.P3421952146294636000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A188298 (n + 1)).toNat - A004526 n

end

end A188045.P3421952146294636000

namespace A188045

/-- `A005843(A188298(n+1))-A004526(n)` -/
def P3421952146294636000.Spec : Prop :=
  ∀ n, P3421952146294636000.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P2093190052794118071

`A005408(A188298(n+1))-A008619(n)`
-/

namespace A188045.P2093190052794118071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A188298 (n + 1)).toNat - A008619 n

end

end A188045.P2093190052794118071

namespace A188045

/-- `A005408(A188298(n+1))-A008619(n)` -/
def P2093190052794118071.Spec : Prop :=
  ∀ n, P2093190052794118071.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P6809746115401775861

`A188040(2*A336109(n+1))-1`
-/

namespace A188045.P6809746115401775861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (2 * A336109 (n + 1)).toNat - 1

end

end A188045.P6809746115401775861

namespace A188045

/-- `A188040(2*A336109(n+1))-1` -/
def P6809746115401775861.Spec : Prop :=
  ∀ n, P6809746115401775861.a n = A188045 (n + 1)

end A188045

/-! ## A188045.P5117753014866202229

`lt[A188044(n+1), 1]+1`
-/

namespace A188045.P5117753014866202229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188045.P5117753014866202229

namespace A188045

/-- `lt[A188044(n+1), 1]+1` -/
def P5117753014866202229.Spec : Prop :=
  ∀ n, (P5117753014866202229.a n : ℤ) = A188045 (n + 1)

end A188045

/-! ## A188045.P5982848048753884770

`eq[2, A188044(n+2)+2]+2`
-/

namespace A188045.P5982848048753884770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A188045.P5982848048753884770

namespace A188045

/-- `eq[2, A188044(n+2)+2]+2` -/
def P5982848048753884770.Spec : Prop :=
  ∀ n, (P5982848048753884770.a n : ℤ) = A188045 (n + 1)

end A188045

/-!
# A188046: Positions of 1 in A188044; complement of A188045.

The programs for A188046, the canonical program `A188046.P2805480995859068982` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188046 has offset 1).

The definition of A188046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188046.P2805480995859068982

`∪[A003152(n+1), A285078(n+1)+2]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188046

/-- `∪[A003152(n+1), A285078(n+1)+2]` -/
def P2805480995859068982.Spec : Prop :=
  ∀ n, (P2805480995859068982.a n : ℤ) = A188046 (n + 1)

theorem P2805480995859068982.correct : P2805480995859068982.Spec := by
  intro n
  simp only [A188046, Nat.add_sub_cancel]

end A188046

/-! ## A188046.P16676402448491835766

`∪[A187977(n+1), A285078(n+1)+2]`
-/

namespace A188046.P16676402448491835766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188046.P16676402448491835766

namespace A188046

/-- `∪[A187977(n+1), A285078(n+1)+2]` -/
def P16676402448491835766.Spec : Prop :=
  ∀ n, (P16676402448491835766.a n : ℤ) = A188046 (n + 1)

end A188046

/-! ## A188046.P17541042648256547072

`A188040(round((a(n-1)+n)/2)+1)` with `a(0)=1`
-/

namespace A188046.P17541042648256547072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188040 (SequenceMachineLib.roundAway ((a (n - 1) + (n : ℤ) : ℚ) / 2) + 1).toNat

end

end A188046.P17541042648256547072

namespace A188046

/-- `A188040(round((a(n-1)+n)/2)+1)` -/
def P17541042648256547072.Spec : Prop :=
  ∀ n, P17541042648256547072.a n = A188046 (n + 1)

end A188046

/-! ## A188046.P8317993261475628321

`filter[n+1, A188044(#)]`
-/

namespace A188046.P8317993261475628321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188044 (f1 j) = 1) n)

end

end A188046.P8317993261475628321

namespace A188046

/-- `filter[n+1, A188044(#)]` -/
def P8317993261475628321.Spec : Prop :=
  ∀ n, (P8317993261475628321.a n : ℤ) = A188046 (n + 1)

end A188046

/-! ## A188046.P18444492649742768712

`eq[1, A188044(n+1)]+1`
-/

namespace A188046.P18444492649742768712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188046.P18444492649742768712

namespace A188046

/-- `eq[1, A188044(n+1)]+1` -/
def P18444492649742768712.Spec : Prop :=
  ∀ n, (P18444492649742768712.a n : ℤ) = A188046 (n + 1)

end A188046

/-! ## A188046.P13019439656376219071

`a(n-1)+2-A188044(a(n-1)+1)` with `a(0)=1`
-/

namespace A188046.P13019439656376219071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - A188044 (a (n - 1) + 1).toNat

end

end A188046.P13019439656376219071

namespace A188046

/-- `a(n-1)+2-A188044(a(n-1)+1)` -/
def P13019439656376219071.Spec : Prop :=
  ∀ n, P13019439656376219071.a n = A188046 (n + 1)

end A188046

/-! ## A188046.P13660449772175986925

`record[A038722(A038722(n+1))*A188044(n+1)]`
-/

namespace A188046.P13660449772175986925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A188044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188046.P13660449772175986925

namespace A188046

/-- `record[A038722(A038722(n+1))*A188044(n+1)]` -/
def P13660449772175986925.Spec : Prop :=
  ∀ n, P13660449772175986925.a n = A188046 (n + 1)

end A188046

/-! ## A188046.P1743588671455177828

`record[A008619(n)*A188044(A008619(n))]`
-/

namespace A188046.P1743588671455177828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A188044 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188046.P1743588671455177828

namespace A188046

/-- `record[A008619(n)*A188044(A008619(n))]` -/
def P1743588671455177828.Spec : Prop :=
  ∀ n, P1743588671455177828.a n = A188046 (n + 1)

end A188046

/-! ## A188046.P17863351113867194647

`record[A121828(n+1)*A188044(A121828(n+1))]`
-/

namespace A188046.P17863351113867194647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (n + 1) * A188044 (A121828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188046.P17863351113867194647

namespace A188046

/-- `record[A121828(n+1)*A188044(A121828(n+1))]` -/
def P17863351113867194647.Spec : Prop :=
  ∀ n, P17863351113867194647.a n = A188046 (n + 1)

end A188046

/-!
# A188047: Numbers k such that k^k-1 and k^k+1 are squarefree.

The programs for A188047, there is no canonical definition to state claims against.
-/

/-! ## A188047.P14903272512250982031

`∩[A184966(n+1), A184967(n+1)]`
-/

namespace A188047.P14903272512250982031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188047.P14903272512250982031

/-! ## A188047.P5509303300070076634

`∑[A054541(A324934(n+2)+A080039(n))]`
-/

namespace A188047.P5509303300070076634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A324934 (n + 2) + A080039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188047.P5509303300070076634

/-! ## A188047.P9735330888510459497

`A008996(n+2)-A034947(A000081(n+2))`
-/

namespace A188047.P9735330888510459497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008996 (n + 2) - A034947 (A000081 (n + 2)).toNat

end

end A188047.P9735330888510459497

/-! ## A188047.P8724311728876438257

`∑[A000005(A108492(n)+4)]`
-/

namespace A188047.P8724311728876438257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A108492 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188047.P8724311728876438257

/-! ## A188047.P8546116140260012911

`∑[A000005(∑[A062860(2*(n+1))])]`
-/

namespace A188047.P8546116140260012911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062860 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188047.P8546116140260012911

/-!
# A188048: Expansion of (1 - x^2)/(1 - 3*x^2 - x^3).

The programs for A188048, the canonical program `A188048.P15387653882527825682` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188048 has offset 0).

The definition of A188048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x^2-x^3))` (program `A188048.P15387653882527825682`, by `A188048.P15387653882527825682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188048.P15387653882527825682

`ogf((1-x^2)/(1-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188048

/-- `ogf((1-x^2)/(1-3x^2-x^3))` -/
def P15387653882527825682.Spec : Prop :=
  ∀ n, P15387653882527825682.a n = A188048 n

theorem P15387653882527825682.correct : P15387653882527825682.Spec := by
  intro n
  simp only [A188048]

end A188048

/-! ## A188048.P1634462083625497707

`3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A188048.P1634462083625497707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  3 * a (n - 2) + a (n - 3)

end

end A188048.P1634462083625497707

namespace A188048

/-- `3*a(n-2)+a(n-3)` -/
def P1634462083625497707.Spec : Prop :=
  ∀ n, (P1634462083625497707.a n : ℤ) = A188048 n

end A188048

/-! ## A188048.P15563908439700615548

`A187497(3*n+1)`
-/

namespace A188048.P15563908439700615548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n + 1)

end

end A188048.P15563908439700615548

namespace A188048

/-- `A187497(3*n+1)` -/
def P15563908439700615548.Spec : Prop :=
  ∀ n, P15563908439700615548.a n = A188048 n

end A188048

/-! ## A188048.P5322114304091647957

`4*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A188048.P5322114304091647957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A188048.P5322114304091647957

namespace A188048

/-- `4*a(n-2)-(a(n-2)-a(n-3))` -/
def P5322114304091647957.Spec : Prop :=
  ∀ n, P5322114304091647957.a n = A188048 n

end A188048

/-! ## A188048.P5171814382557561422

`a(n-2)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A188048.P5171814382557561422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A188048.P5171814382557561422

namespace A188048

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-3)` -/
def P5171814382557561422.Spec : Prop :=
  ∀ n, (P5171814382557561422.a n : ℤ) = A188048 n

end A188048

/-! ## A188048.P8259147743233936201

`Δ[A188022(n)]`
-/

namespace A188048.P8259147743233936201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188048.P8259147743233936201

namespace A188048

/-- `Δ[A188022(n)]` -/
def P8259147743233936201.Spec : Prop :=
  ∀ n, P8259147743233936201.a n = A188048 n

end A188048

/-! ## A188048.P10960326444980624673

`A188022(n+1)-A188022(n)`
-/

namespace A188048.P10960326444980624673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (n + 1) - A188022 n

end

end A188048.P10960326444980624673

namespace A188048

/-- `A188022(n+1)-A188022(n)` -/
def P10960326444980624673.Spec : Prop :=
  ∀ n, P10960326444980624673.a n = A188048 n

end A188048

/-! ## A188048.P9628768295392366725

`Δ[Δ[A061551(n)]]`
-/

namespace A188048.P9628768295392366725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188048.P9628768295392366725

namespace A188048

/-- `Δ[Δ[A061551(n)]]` -/
def P9628768295392366725.Spec : Prop :=
  ∀ n, P9628768295392366725.a n = A188048 n

end A188048

/-! ## A188048.P10059210980032330221

`abs(A215664(n)/3)`
-/

namespace A188048.P10059210980032330221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A215664 n : ℚ) / 3|

end

end A188048.P10059210980032330221

namespace A188048

/-- `abs(A215664(n)/3)` -/
def P10059210980032330221.Spec : Prop :=
  ∀ n, P10059210980032330221.a n = (A188048 n : ℚ)

end A188048

/-! ## A188048.P995527704268062381

`floor(A094649(n)/3)`
-/

namespace A188048.P995527704268062381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094649 n : ℚ) / 3⌋

end

end A188048.P995527704268062381

namespace A188048

/-- `floor(A094649(n)/3)` -/
def P995527704268062381.Spec : Prop :=
  ∀ n, P995527704268062381.a n = A188048 n

end A188048

/-! ## A188048.P6794006908777521142

`A215664(n)/A174971(n)`
-/

namespace A188048.P6794006908777521142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215664 n : ℚ) / (A174971 n : ℚ)

end

end A188048.P6794006908777521142

namespace A188048

/-- `A215664(n)/A174971(n)` -/
def P6794006908777521142.Spec : Prop :=
  ∀ n, P6794006908777521142.a n = (A188048 n : ℚ)

end A188048

/-!
# A188050: a(n) = A016755(n) - A001845(n).

The programs for A188050, the canonical program `A188050.P2437867071037647755` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188050 has offset 0).

The definition of A188050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188050.P9905047676319896381

`10/3*n*(n+1)*(2*n+1)`
-/

namespace A188050.P9905047676319896381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) / 3 * (n : ℚ) * (n + 1 : ℚ) * (2 * n + 1 : ℚ)

end

end A188050.P9905047676319896381

namespace A188050

/-- `10/3*n*(n+1)*(2*n+1)` -/
def P9905047676319896381.Spec : Prop :=
  ∀ n, P9905047676319896381.a n = (A188050 n : ℚ)

end A188050

/-! ## A188050.P2437867071037647755

`A016755(n)-A001845(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188050

/-- `A016755(n)-A001845(n)` -/
def P2437867071037647755.Spec : Prop :=
  ∀ n, P2437867071037647755.a n = A188050 n

theorem P2437867071037647755.correct : P2437867071037647755.Spec := by
  intro n
  simp only [A188050]

end A188050

/-! ## A188050.P1487188306987071363

`a(n-1)+20*n²` with `a(0)=0`
-/

namespace A188050.P1487188306987071363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 20 * n ^ 2

end

end A188050.P1487188306987071363

namespace A188050

/-- `a(n-1)+20*n²` -/
def P1487188306987071363.Spec : Prop :=
  ∀ n, (P1487188306987071363.a n : ℤ) = A188050 n

end A188050

/-! ## A188050.P3286495263891631178

`lcm(2, ∑[2*n*10*n])`
-/

namespace A188050.P3286495263891631178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188050.P3286495263891631178

namespace A188050

/-- `lcm(2, ∑[2*n*10*n])` -/
def P3286495263891631178.Spec : Prop :=
  ∀ n, (P3286495263891631178.a n : ℤ) = A188050 n

end A188050

/-! ## A188050.P5803312389115409657

`∑[A195322(n)]`
-/

namespace A188050.P5803312389115409657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188050.P5803312389115409657

namespace A188050

/-- `∑[A195322(n)]` -/
def P5803312389115409657.Spec : Prop :=
  ∀ n, P5803312389115409657.a n = A188050 n

end A188050

/-! ## A188050.P2881925421029737369

`A063497(n)/3`
-/

namespace A188050.P2881925421029737369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063497 n : ℚ) / 3

end

end A188050.P2881925421029737369

namespace A188050

/-- `A063497(n)/3` -/
def P2881925421029737369.Spec : Prop :=
  ∀ n, P2881925421029737369.a n = (A188050 n : ℚ)

end A188050

/-! ## A188050.P1216048315957429455

`∑[A017270(n)/5]`
-/

namespace A188050.P1216048315957429455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017270 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188050.P1216048315957429455

namespace A188050

/-- `∑[A017270(n)/5]` -/
def P1216048315957429455.Spec : Prop :=
  ∀ n, P1216048315957429455.a n = (A188050 n : ℚ)

end A188050

/-! ## A188050.P10045700989693411489

`∑[A158493(n)]-(n+1)`
-/

namespace A188050.P10045700989693411489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A188050.P10045700989693411489

namespace A188050

/-- `∑[A158493(n)]-(n+1)` -/
def P10045700989693411489.Spec : Prop :=
  ∀ n, P10045700989693411489.a n = A188050 n

end A188050

/-! ## A188050.P6831057320686026025

`A095265(n+1)-(n+1)`
-/

namespace A188050.P6831057320686026025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1) - (n + 1 : ℤ)

end

end A188050.P6831057320686026025

namespace A188050

/-- `A095265(n+1)-(n+1)` -/
def P6831057320686026025.Spec : Prop :=
  ∀ n, P6831057320686026025.a n = A188050 n

end A188050

/-! ## A188050.P11669734789972283608

`A371532(n)+A056220(n)`
-/

namespace A188050.P11669734789972283608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 n + A056220 n

end

end A188050.P11669734789972283608

namespace A188050

/-- `A371532(n)+A056220(n)` -/
def P11669734789972283608.Spec : Prop :=
  ∀ n, P11669734789972283608.a n = A188050 n

end A188050

/-! ## A188050.P7758373603180058664

`A005904(n)-A005902(n)`
-/

namespace A188050.P7758373603180058664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 n - A005902 n

end

end A188050.P7758373603180058664

namespace A188050

/-- `A005904(n)-A005902(n)` -/
def P7758373603180058664.Spec : Prop :=
  ∀ n, P7758373603180058664.a n = A188050 n

end A188050

/-! ## A188050.P318400537667770713

`A015219(n)-A005917(n+1)`
-/

namespace A188050.P318400537667770713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A005917 (n + 1)

end

end A188050.P318400537667770713

namespace A188050

/-- `A015219(n)-A005917(n+1)` -/
def P318400537667770713.Spec : Prop :=
  ∀ n, P318400537667770713.a n = A188050 n

end A188050

/-! ## A188050.P6250448095315347064

`A121628(n+1)-A214659(n)`
-/

namespace A188050.P6250448095315347064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121628 (n + 1) - A214659 n

end

end A188050.P6250448095315347064

namespace A188050

/-- `A121628(n+1)-A214659(n)` -/
def P6250448095315347064.Spec : Prop :=
  ∀ n, P6250448095315347064.a n = A188050 n

end A188050

/-! ## A188050.P9868680742058790204

`A100173(n+1)-A006564(n+1)`
-/

namespace A188050.P9868680742058790204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100173 (n + 1) - A006564 (n + 1)

end

end A188050.P9868680742058790204

namespace A188050

/-- `A100173(n+1)-A006564(n+1)` -/
def P9868680742058790204.Spec : Prop :=
  ∀ n, P9868680742058790204.a n = A188050 n

end A188050

/-! ## A188050.P12110467747016391232

`A193228(n+1)-A063496(n+1)`
-/

namespace A188050.P12110467747016391232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 1) - A063496 (n + 1)

end

end A188050.P12110467747016391232

namespace A188050

/-- `A193228(n+1)-A063496(n+1)` -/
def P12110467747016391232.Spec : Prop :=
  ∀ n, P12110467747016391232.a n = A188050 n

end A188050

/-! ## A188050.P10466903233312972529

`Δ[5*A112742(n)]`
-/

namespace A188050.P10466903233312972529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A112742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188050.P10466903233312972529

namespace A188050

/-- `Δ[5*A112742(n)]` -/
def P10466903233312972529.Spec : Prop :=
  ∀ n, P10466903233312972529.a n = A188050 n

end A188050

/-! ## A188050.P16285495673209669158

`A100163(n+1)-A005900(n+1)`
-/

namespace A188050.P16285495673209669158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100163 (n + 1) - A005900 (n + 1)

end

end A188050.P16285495673209669158

namespace A188050

/-- `A100163(n+1)-A005900(n+1)` -/
def P16285495673209669158.Spec : Prop :=
  ∀ n, P16285495673209669158.a n = A188050 n

end A188050

/-! ## A188050.P6550943019283355833

`∑[A195148(2*n)]`
-/

namespace A188050.P6550943019283355833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188050.P6550943019283355833

namespace A188050

/-- `∑[A195148(2*n)]` -/
def P6550943019283355833.Spec : Prop :=
  ∀ n, P6550943019283355833.a n = A188050 n

end A188050

/-! ## A188050.P17834855038781793364

`A134481(2*n)`
-/

namespace A188050.P17834855038781793364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 (2 * n)

end

end A188050.P17834855038781793364

namespace A188050

/-- `A134481(2*n)` -/
def P17834855038781793364.Spec : Prop :=
  ∀ n, P17834855038781793364.a n = A188050 n

end A188050

/-! ## A188050.P13725161872838716963

`∑[A033429(2*n)]`
-/

namespace A188050.P13725161872838716963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188050.P13725161872838716963

namespace A188050

/-- `∑[A033429(2*n)]` -/
def P13725161872838716963.Spec : Prop :=
  ∀ n, P13725161872838716963.a n = A188050 n

end A188050

/-!
# A188053: Stanley Sequence S(0,1,4).

The programs for A188053, the canonical program `A188053.P997518175731916097` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188053 has offset 1).

The definition of A188053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188053.P997518175731916097

`floor((A053644(n)+A005823(n+1))/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188053

/-- `floor((A053644(n)+A005823(n+1))/2)` -/
def P997518175731916097.Spec : Prop :=
  ∀ n, P997518175731916097.a n = A188053 (n + 1)

theorem P997518175731916097.correct : P997518175731916097.Spec := by
  intro n
  simp only [A188053, Nat.add_sub_cancel]

end A188053

/-! ## A188053.P17424913889889137242

`A053644(floor(n/2))+A005836(n+1)`
-/

namespace A188053.P17424913889889137242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 ⌊(n : ℚ) / 2⌋.toNat + A005836 (n + 1)

end

end A188053.P17424913889889137242

namespace A188053

/-- `A053644(floor(n/2))+A005836(n+1)` -/
def P17424913889889137242.Spec : Prop :=
  ∀ n, P17424913889889137242.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P4674777551413684705

`A005836(n+1)+A053644(A004526(n))`
-/

namespace A188053.P4674777551413684705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A053644 (A004526 n).toNat

end

end A188053.P4674777551413684705

namespace A188053

/-- `A005836(n+1)+A053644(A004526(n))` -/
def P4674777551413684705.Spec : Prop :=
  ∀ n, P4674777551413684705.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P16180327222290463425

`A034008(A070939(n))+A005836(n+1)`
-/

namespace A188053.P16180327222290463425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A070939 n).toNat + A005836 (n + 1)

end

end A188053.P16180327222290463425

namespace A188053

/-- `A034008(A070939(n))+A005836(n+1)` -/
def P16180327222290463425.Spec : Prop :=
  ∀ n, P16180327222290463425.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P7152918434254318265

`A072376(A052928(n))+A005836(n+1)`
-/

namespace A188053.P7152918434254318265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A052928 n).toNat + A005836 (n + 1)

end

end A188053.P7152918434254318265

namespace A188053

/-- `A072376(A052928(n))+A005836(n+1)` -/
def P7152918434254318265.Spec : Prop :=
  ∀ n, P7152918434254318265.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P9890348807649875735

`A005836(n+1)+A000463(A053644(n)+1)-1`
-/

namespace A188053.P9890348807649875735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A000463 (A053644 n + 1).toNat - 1)

end

end A188053.P9890348807649875735

namespace A188053

/-- `A005836(n+1)+A000463(A053644(n)+1)-1` -/
def P9890348807649875735.Spec : Prop :=
  ∀ n, P9890348807649875735.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P9807337754058376297

`A005836(n+1)+A002265(A062383(n))`
-/

namespace A188053.P9807337754058376297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A002265 (A062383 n).toNat

end

end A188053.P9807337754058376297

namespace A188053

/-- `A005836(n+1)+A002265(A062383(n))` -/
def P9807337754058376297.Spec : Prop :=
  ∀ n, P9807337754058376297.a n = A188053 (n + 1)

end A188053

/-! ## A188053.P6660753273652921723

`A004525(A053644(n)+A005823(n+1))`
-/

namespace A188053.P6660753273652921723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A053644 n + A005823 (n + 1)).toNat

end

end A188053.P6660753273652921723

namespace A188053

/-- `A004525(A053644(n)+A005823(n+1))` -/
def P6660753273652921723.Spec : Prop :=
  ∀ n, P6660753273652921723.a n = A188053 (n + 1)

end A188053

/-!
# A188055: Stanley Sequence S(0,6).

The programs for A188055, there is no canonical definition to state claims against.
-/

/-! ## A188055.P7891970873488796553

`A093678(n+1)-1`
-/

namespace A188055.P7891970873488796553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093678 (n + 1) - 1

end

end A188055.P7891970873488796553

/-! ## A188055.P4078576017938753771

`A114006(A319690(3*n+5))+A093678(n+1)`
-/

namespace A188055.P4078576017938753771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (A319690 (3 * n + 5)).toNat + A093678 (n + 1)

end

end A188055.P4078576017938753771

/-! ## A188055.P8423562034268566795

`A185256(n+1)+A093678(n+1)%A033157(n+1)`
-/

namespace A188055.P8423562034268566795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + Int.tmod (A093678 (n + 1)) (A033157 (n + 1))

end

end A188055.P8423562034268566795

/-! ## A188055.P4600779529752924182

`A176740(Δ[A097508(n)])+A093678(n+1)`
-/

namespace A188055.P4600779529752924182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 (f1 (n + 1) - f1 n).toNat + A093678 (n + 1)

end

end A188055.P4600779529752924182

/-! ## A188055.P9832344695894632360

`A355824(A106856(n+1))+A093678(n+1)`
-/

namespace A188055.P9832344695894632360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (A106856 (n + 1)).toNat + A093678 (n + 1)

end

end A188055.P9832344695894632360

/-! ## A188055.P6502691983537766873

`A284793(A284794(n+1))+A093678(n+1)`
-/

namespace A188055.P6502691983537766873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A284794 (n + 1)).toNat + A093678 (n + 1)

end

end A188055.P6502691983537766873

/-! ## A188055.P890121814531307173

`A355824(A005383(n+1))+A093678(n+1)`
-/

namespace A188055.P890121814531307173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (A005383 (n + 1)).toNat + A093678 (n + 1)

end

end A188055.P890121814531307173

/-! ## A188055.P15646909955628459920

`A004483(A093678(n+1))`
-/

namespace A188055.P15646909955628459920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A093678 (n + 1)).toNat

end

end A188055.P15646909955628459920

/-! ## A188055.P15977164195973145326

`A023445(A093678(n+1)+2)`
-/

namespace A188055.P15977164195973145326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A093678 (n + 1) + 2).toNat

end

end A188055.P15977164195973145326

/-!
# A188056: Stanley Sequence S(0,8).

The programs for A188056, there is no canonical definition to state claims against.
-/

/-! ## A188056.P5601305434182905563

`eq[A057505(A132292(n+1)), A161091(n+2)]`
-/

namespace A188056.P5601305434182905563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A132292 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161091 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188056.P5601305434182905563

/-! ## A188056.P1022288641616048995

`eq[A037888(A141214(n)), A196564(n)]`
-/

namespace A188056.P1022288641616048995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A141214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188056.P1022288641616048995

/-!
# A188057: Stanley Sequence S(0,9).

The programs for A188057, there is no canonical definition to state claims against.
-/

/-! ## A188057.P14200720183220534117

`A093679(n+1)-1`
-/

namespace A188057.P14200720183220534117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093679 (n + 1) - 1

end

end A188057.P14200720183220534117

/-! ## A188057.P473237835908012254

`A004483(A093679(n+1))`
-/

namespace A188057.P473237835908012254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A093679 (n + 1)).toNat

end

end A188057.P473237835908012254

/-! ## A188057.P879146120698398

`record[A093679(A286622(n))-1]`
-/

namespace A188057.P879146120698398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093679 (A286622 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188057.P879146120698398

/-! ## A188057.P15672048740754796249

`A023444(A093679(n+1)+1)`
-/

namespace A188057.P15672048740754796249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A093679 (n + 1) + 1).toNat

end

end A188057.P15672048740754796249

/-! ## A188057.P9746751577853685559

`A289207(A093679(n+1)+1)`
-/

namespace A188057.P9746751577853685559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A093679 (n + 1) + 1).toNat

end

end A188057.P9746751577853685559

/-! ## A188057.P5070548682583351313

`A004495(A093679(n+1)+2)`
-/

namespace A188057.P5070548682583351313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A093679 (n + 1) + 2).toNat

end

end A188057.P5070548682583351313

/-! ## A188057.P7569085522533825406

`A140106(2*A093679(n+1))`
-/

namespace A188057.P7569085522533825406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A093679 (n + 1)).toNat

end

end A188057.P7569085522533825406

/-! ## A188057.P2605453707162141548

`A059169(4*A093679(n+1))`
-/

namespace A188057.P2605453707162141548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A093679 (n + 1)).toNat

end

end A188057.P2605453707162141548

/-! ## A188057.P8592602982062951638

`∑{d}[A023443(A093679(n+1)), A000010(#)]`
-/

namespace A188057.P8592602982062951638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A093679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A188057.P8592602982062951638

/-! ## A188057.P9045136607692127195

`A105812(A000010(n+3))+A093679(n+1)`
-/

namespace A188057.P9045136607692127195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A000010 (n + 3)).toNat + A093679 (n + 1)

end

end A188057.P9045136607692127195

/-!
# A188059: Numbers k with the property that k, k+1 and 2*k+1 are all semiprimes.

The programs for A188059, the canonical program `A188059.P7151805966648174443` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188059 has offset 1).

The definition of A188059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188059.P7295168468030504206

`∩[A070552(n+1), A272306(n+1)]`
-/

namespace A188059.P7295168468030504206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P7295168468030504206

namespace A188059

/-- `∩[A070552(n+1), A272306(n+1)]` -/
def P7295168468030504206.Spec : Prop :=
  ∀ n, (P7295168468030504206.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P7876609942954717657

`∩[A070552(n+1), A369670(n+1)]`
-/

namespace A188059.P7876609942954717657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P7876609942954717657

namespace A188059

/-- `∩[A070552(n+1), A369670(n+1)]` -/
def P7876609942954717657.Spec : Prop :=
  ∀ n, (P7876609942954717657.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P7151805966648174443

`∩[A272306(n+1), A369670(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A188059

/-- `∩[A272306(n+1), A369670(n+1)]` -/
def P7151805966648174443.Spec : Prop :=
  ∀ n, (P7151805966648174443.a n : ℤ) = A188059 (n + 1)

theorem P7151805966648174443.correct : P7151805966648174443.Spec := by
  intro n
  simp only [A188059, Nat.add_sub_cancel]

end A188059

/-! ## A188059.P7615947619718168459

`∩[A109373(n+1)-1, A272306(n+1)]`
-/

namespace A188059.P7615947619718168459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P7615947619718168459

namespace A188059

/-- `∩[A109373(n+1)-1, A272306(n+1)]` -/
def P7615947619718168459.Spec : Prop :=
  ∀ n, (P7615947619718168459.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P15226759196788155768

`∩[A108815(n+1), A272306(n+1)]`
-/

namespace A188059.P15226759196788155768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P15226759196788155768

namespace A188059

/-- `∩[A108815(n+1), A272306(n+1)]` -/
def P15226759196788155768.Spec : Prop :=
  ∀ n, (P15226759196788155768.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P1099704829317528900

`∩[A108815(n+1), A369670(n+1)]`
-/

namespace A188059.P1099704829317528900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P1099704829317528900

namespace A188059

/-- `∩[A108815(n+1), A369670(n+1)]` -/
def P1099704829317528900.Spec : Prop :=
  ∀ n, (P1099704829317528900.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P10438137690518554288

`∩[A070552(n+1), A111153(n+1)]`
-/

namespace A188059.P10438137690518554288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P10438137690518554288

namespace A188059

/-- `∩[A070552(n+1), A111153(n+1)]` -/
def P10438137690518554288.Spec : Prop :=
  ∀ n, (P10438137690518554288.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P14259228217799127670

`∩[A108815(n+1), A111153(n+1)]`
-/

namespace A188059.P14259228217799127670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P14259228217799127670

namespace A188059

/-- `∩[A108815(n+1), A111153(n+1)]` -/
def P14259228217799127670.Spec : Prop :=
  ∀ n, (P14259228217799127670.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P4824989528100582085

`∩[A111153(n+1), A369670(n+1)]`
-/

namespace A188059.P4824989528100582085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P4824989528100582085

namespace A188059

/-- `∩[A111153(n+1), A369670(n+1)]` -/
def P4824989528100582085.Spec : Prop :=
  ∀ n, (P4824989528100582085.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P9771953032232447308

`∩[A111153(n+1), A111168(n+1)-1]`
-/

namespace A188059.P9771953032232447308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P9771953032232447308

namespace A188059

/-- `∩[A111153(n+1), A111168(n+1)-1]` -/
def P9771953032232447308.Spec : Prop :=
  ∀ n, (P9771953032232447308.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P15393195820348638193

`∩[A111153(n+1), A242466(n+1)]`
-/

namespace A188059.P15393195820348638193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P15393195820348638193

namespace A188059

/-- `∩[A111153(n+1), A242466(n+1)]` -/
def P15393195820348638193.Spec : Prop :=
  ∀ n, (P15393195820348638193.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P16780202058729772887

`∩[A242466(n+1), A272306(n+1)]`
-/

namespace A188059.P16780202058729772887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P16780202058729772887

namespace A188059

/-- `∩[A242466(n+1), A272306(n+1)]` -/
def P16780202058729772887.Spec : Prop :=
  ∀ n, (P16780202058729772887.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P16134302828880560644

`∩[A001358(n+1), A369670(n+1)]`
-/

namespace A188059.P16134302828880560644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P16134302828880560644

namespace A188059

/-- `∩[A001358(n+1), A369670(n+1)]` -/
def P16134302828880560644.Spec : Prop :=
  ∀ n, (P16134302828880560644.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P3865324173134335894

`∩[A045920(n+1), A111153(n+1)]`
-/

namespace A188059.P3865324173134335894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P3865324173134335894

namespace A188059

/-- `∩[A045920(n+1), A111153(n+1)]` -/
def P3865324173134335894.Spec : Prop :=
  ∀ n, (P3865324173134335894.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P1382097842456796425

`∩[A045920(n+1), A272306(n+1)]`
-/

namespace A188059.P1382097842456796425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P1382097842456796425

namespace A188059

/-- `∩[A045920(n+1), A272306(n+1)]` -/
def P1382097842456796425.Spec : Prop :=
  ∀ n, (P1382097842456796425.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P16304541615925151388

`filter[A369670(n+1), A064911(#)]`
-/

namespace A188059.P16304541615925151388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A188059.P16304541615925151388

namespace A188059

/-- `filter[A369670(n+1), A064911(#)]` -/
def P16304541615925151388.Spec : Prop :=
  ∀ n, P16304541615925151388.a n = A188059 (n + 1)

end A188059

/-! ## A188059.P13007164466400328655

`filter[A369670(n+2), A101040(#)]`
-/

namespace A188059.P13007164466400328655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A188059.P13007164466400328655

namespace A188059

/-- `filter[A369670(n+2), A101040(#)]` -/
def P13007164466400328655.Spec : Prop :=
  ∀ n, P13007164466400328655.a n = A188059 (n + 1)

end A188059

/-! ## A188059.P11421274466099010616

`∩[A111153(n+1), A114455(n+1)-1]`
-/

namespace A188059.P11421274466099010616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114455 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P11421274466099010616

namespace A188059

/-- `∩[A111153(n+1), A114455(n+1)-1]` -/
def P11421274466099010616.Spec : Prop :=
  ∀ n, (P11421274466099010616.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P4300469423140603967

`∩[A070552(n+1), A117360(n+1)]`
-/

namespace A188059.P4300469423140603967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P4300469423140603967

namespace A188059

/-- `∩[A070552(n+1), A117360(n+1)]` -/
def P4300469423140603967.Spec : Prop :=
  ∀ n, (P4300469423140603967.a n : ℤ) = A188059 (n + 1)

end A188059

/-! ## A188059.P12204442049122861689

`∩[A111168(n+1)-1, A117360(n+1)]`
-/

namespace A188059.P12204442049122861689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111168 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188059.P12204442049122861689

namespace A188059

/-- `∩[A111168(n+1)-1, A117360(n+1)]` -/
def P12204442049122861689.Spec : Prop :=
  ∀ n, (P12204442049122861689.a n : ℤ) = A188059 (n + 1)

end A188059

/-!
# A188060: Numerator of 8^(2n-1) |B(2n)| / (2n)!, where B() are the Bernoulli numbers.

The programs for A188060, there is no canonical definition to state claims against.
-/

/-! ## A188060.P15027601178980265957

`A000079(n+1)²*A295232(n+1)`
-/

namespace A188060.P15027601178980265957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 * A295232 (n + 1)

end

end A188060.P15027601178980265957

/-! ## A188060.P13828391509617380937

`A000079(2*(n+1))*A295232(n+1)`
-/

namespace A188060.P13828391509617380937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1)) * A295232 (n + 1)

end

end A188060.P13828391509617380937

/-!
# A188061: Numbers k such that (product of divisors of k) == 1 (mod sum of divisors of k).

The programs for A188061, the canonical program `A188061.P15782663309077621445` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188061 has offset 1).

The definition of A188061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188061.P15782663309077621445

`filter[A346956(n+1), A325964(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188061

/-- `filter[A346956(n+1), A325964(#)]` -/
def P15782663309077621445.Spec : Prop :=
  ∀ n, P15782663309077621445.a n = A188061 (n + 1)

theorem P15782663309077621445.correct : P15782663309077621445.Spec := by
  intro n
  simp only [A188061, Nat.add_sub_cancel]

end A188061

/-! ## A188061.P8643083028989469126

`∩[A003624(n+1), A346956(n+1)]`
-/

namespace A188061.P8643083028989469126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188061.P8643083028989469126

namespace A188061

/-- `∩[A003624(n+1), A346956(n+1)]` -/
def P8643083028989469126.Spec : Prop :=
  ∀ n, (P8643083028989469126.a n : ℤ) = A188061 (n + 1)

end A188061

/-! ## A188061.P12412117956917918567

`∩[A014567(n+1), A346956(n+1)]`
-/

namespace A188061.P12412117956917918567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188061.P12412117956917918567

namespace A188061

/-- `∩[A014567(n+1), A346956(n+1)]` -/
def P12412117956917918567.Spec : Prop :=
  ∀ n, (P12412117956917918567.a n : ℤ) = A188061 (n + 1)

end A188061

/-! ## A188061.P7717741230839605193

`eq[1, A187680(n+1)]+1`
-/

namespace A188061.P7717741230839605193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188061.P7717741230839605193

namespace A188061

/-- `eq[1, A187680(n+1)]+1` -/
def P7717741230839605193.Spec : Prop :=
  ∀ n, (P7717741230839605193.a n : ℤ) = A188061 (n + 1)

end A188061

/-! ## A188061.P278910427331206328

`eq[1, A187680(A028310(n))]`
-/

namespace A188061.P278910427331206328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188061.P278910427331206328

namespace A188061

/-- `eq[1, A187680(A028310(n))]` -/
def P278910427331206328.Spec : Prop :=
  ∀ n, (P278910427331206328.a n : ℤ) = A188061 (n + 1)

end A188061

/-! ## A188061.P1339270986184883559

`A020725(eq[1, A187680(n+1)])`
-/

namespace A188061.P1339270986184883559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188061.P1339270986184883559

namespace A188061

/-- `A020725(eq[1, A187680(n+1)])` -/
def P1339270986184883559.Spec : Prop :=
  ∀ n, P1339270986184883559.a n = A188061 (n + 1)

end A188061

/-! ## A188061.P3893027117900391594

`eq[1, A187680(A000007(n)+n)]`
-/

namespace A188061.P3893027117900391594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188061.P3893027117900391594

namespace A188061

/-- `eq[1, A187680(A000007(n)+n)]` -/
def P3893027117900391594.Spec : Prop :=
  ∀ n, (P3893027117900391594.a n : ℤ) = A188061 (n + 1)

end A188061

/-! ## A188061.P2510194148102642209

`eq[1, A187680(A008486(n)-2*n)]`
-/

namespace A188061.P2510194148102642209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188061.P2510194148102642209

namespace A188061

/-- `eq[1, A187680(A008486(n)-2*n)]` -/
def P2510194148102642209.Spec : Prop :=
  ∀ n, (P2510194148102642209.a n : ℤ) = A188061 (n + 1)

end A188061

/-!
# A188062: Triangle of the value of Bell polynomials of the second kind B(n,m)(6,30,120,360,720,720) in row n, column m.

The programs for A188062, there is no canonical definition to state claims against.
-/

/-! ## A188062.P1494720206459443444

`6^A002260(n+1)*A049411(n+1)`
-/

namespace A188062.P1494720206459443444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A049411 (n + 1) : ℚ)

end

end A188062.P1494720206459443444

/-!
# A188064: Partial sums of wt(n)! where wt(n) is the Hamming weight of n (A000120).

The programs for A188064, the canonical program `A188064.P3650779280844900221` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188064 has offset 0).

The definition of A188064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188064.P3650779280844900221

`∑[(val(n+1, 2)+n-∑[val(n+1, 2)])!]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188064

/-- `∑[(val(n+1, 2)+n-∑[val(n+1, 2)])!]` -/
def P3650779280844900221.Spec : Prop :=
  ∀ n, (P3650779280844900221.a n : ℤ) = A188064 n

theorem P3650779280844900221.correct : P3650779280844900221.Spec := by
  intro n
  simp only [A188064]

end A188064

/-! ## A188064.P15308844393807960626

`∑[A093659(n)]`
-/

namespace A188064.P15308844393807960626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P15308844393807960626

namespace A188064

/-- `∑[A093659(n)]` -/
def P15308844393807960626.Spec : Prop :=
  ∀ n, P15308844393807960626.a n = A188064 n

end A188064

/-! ## A188064.P4611230134348627185

`∑[A000120(n)!]`
-/

namespace A188064.P4611230134348627185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P4611230134348627185

namespace A188064

/-- `∑[A000120(n)!]` -/
def P4611230134348627185.Spec : Prop :=
  ∀ n, (P4611230134348627185.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P6390977422354420437

`∑[log2(A001316(n))!]`
-/

namespace A188064.P6390977422354420437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P6390977422354420437

namespace A188064

/-- `∑[log2(A001316(n))!]` -/
def P6390977422354420437.Spec : Prop :=
  ∀ n, (P6390977422354420437.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P1539262883322988559

`∑[∑[A088705(n)]!]`
-/

namespace A188064.P1539262883322988559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P1539262883322988559

namespace A188064

/-- `∑[∑[A088705(n)]!]` -/
def P1539262883322988559.Spec : Prop :=
  ∀ n, (P1539262883322988559.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P5395999830953828271

`∑[val(A102377(n), 2)!]`
-/

namespace A188064.P5395999830953828271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A102377 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P5395999830953828271

namespace A188064

/-- `∑[val(A102377(n), 2)!]` -/
def P5395999830953828271.Spec : Prop :=
  ∀ n, (P5395999830953828271.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P17102462647917205649

`∑[val(A160713(n), 2)!]`
-/

namespace A188064.P17102462647917205649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A160713 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P17102462647917205649

namespace A188064

/-- `∑[val(A160713(n), 2)!]` -/
def P17102462647917205649.Spec : Prop :=
  ∀ n, (P17102462647917205649.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P11799874011804521322

`∑[A112624(A001316(n))]`
-/

namespace A188064.P11799874011804521322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P11799874011804521322

namespace A188064

/-- `∑[A112624(A001316(n))]` -/
def P11799874011804521322.Spec : Prop :=
  ∀ n, P11799874011804521322.a n = A188064 n

end A188064

/-! ## A188064.P14717842848758244683

`∑[A124774(A038573(n))]`
-/

namespace A188064.P14717842848758244683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P14717842848758244683

namespace A188064

/-- `∑[A124774(A038573(n))]` -/
def P14717842848758244683.Spec : Prop :=
  ∀ n, P14717842848758244683.a n = A188064 n

end A188064

/-! ## A188064.P5049666760873353195

`∑[A284001(A073137(n))]`
-/

namespace A188064.P5049666760873353195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A073137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P5049666760873353195

namespace A188064

/-- `∑[A284001(A073137(n))]` -/
def P5049666760873353195.Spec : Prop :=
  ∀ n, P5049666760873353195.a n = A188064 n

end A188064

/-! ## A188064.P11899847243088285536

`∑[A246660(A073138(n))]`
-/

namespace A188064.P11899847243088285536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P11899847243088285536

namespace A188064

/-- `∑[A246660(A073138(n))]` -/
def P11899847243088285536.Spec : Prop :=
  ∀ n, P11899847243088285536.a n = A188064 n

end A188064

/-! ## A188064.P1849350342447182776

`∑[A005811(A006068(n))!]`
-/

namespace A188064.P1849350342447182776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005811 (A006068 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P1849350342447182776

namespace A188064

/-- `∑[A005811(A006068(n))!]` -/
def P1849350342447182776.Spec : Prop :=
  ∀ n, (P1849350342447182776.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P17009425314452130994

`∑[A005811(A341916(n))!]`
-/

namespace A188064.P17009425314452130994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005811 (A341916 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P17009425314452130994

namespace A188064

/-- `∑[A005811(A341916(n))!]` -/
def P17009425314452130994.Spec : Prop :=
  ∀ n, (P17009425314452130994.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P6906692549653317142

`∑[A130675(A071044(n))]`
-/

namespace A188064.P6906692549653317142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A071044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P6906692549653317142

namespace A188064

/-- `∑[A130675(A071044(n))]` -/
def P6906692549653317142.Spec : Prop :=
  ∀ n, P6906692549653317142.a n = A188064 n

end A188064

/-! ## A188064.P5397573879469640766

`∑[A001222(A278222(n))!]`
-/

namespace A188064.P5397573879469640766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A278222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P5397573879469640766

namespace A188064

/-- `∑[A001222(A278222(n))!]` -/
def P5397573879469640766.Spec : Prop :=
  ∀ n, (P5397573879469640766.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P4800009289260653473

`∑[A048881(2*n)!]`
-/

namespace A188064.P4800009289260653473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A048881 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P4800009289260653473

namespace A188064

/-- `∑[A048881(2*n)!]` -/
def P4800009289260653473.Spec : Prop :=
  ∀ n, (P4800009289260653473.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P1675442509400439555

`∑[A274009(2*n+1)!]`
-/

namespace A188064.P1675442509400439555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A274009 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P1675442509400439555

namespace A188064

/-- `∑[A274009(2*n+1)!]` -/
def P1675442509400439555.Spec : Prop :=
  ∀ n, (P1675442509400439555.a n : ℤ) = A188064 n

end A188064

/-! ## A188064.P15520361824842659916

`∑[A062756(A005836(n+1))!]`
-/

namespace A188064.P15520361824842659916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A062756 (A005836 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188064.P15520361824842659916

namespace A188064

/-- `∑[A062756(A005836(n+1))!]` -/
def P15520361824842659916.Spec : Prop :=
  ∀ n, (P15520361824842659916.a n : ℤ) = A188064 n

end A188064

/-!
# A188065: Numbers k such that k^3 contains the same digits as some other cube.

The programs for A188065, there is no canonical definition to state claims against.
-/

/-! ## A188065.P4040819714025230764

`root(A034290(n+1), 3)`
-/

namespace A188065.P4040819714025230764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034290 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A188065.P4040819714025230764

/-! ## A188065.P17161131062063543037

`A034290(n+1)^3^A049347(3*n+1)`
-/

namespace A188065.P17161131062063543037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034290 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A049347 (3 * n + 1) : ℤ) : ℝ)

end

end A188065.P17161131062063543037

/-! ## A188065.P9926761493524914368

`A054846(floor(sqrt(A034290(n+1))))`
-/

namespace A188065.P9926761493524914368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.sqrt (A034290 (n + 1))).toNat

end

end A188065.P9926761493524914368

/-! ## A188065.P12327276988773253496

`A054846(ceil(sqrt(A034290(n+1))))`
-/

namespace A188065.P12327276988773253496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 ⌈Real.sqrt (A034290 (n + 1) : ℝ)⌉.toNat

end

end A188065.P12327276988773253496

/-! ## A188065.P15806530324316046770

`A054846(round(sqrt(A034290(n+1))))`
-/

namespace A188065.P15806530324316046770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (SequenceMachineLib.roundAway (Real.sqrt (A034290 (n + 1) : ℝ))).toNat

end

end A188065.P15806530324316046770

/-!
# A188067: Expansion of x^2*(x^3+2*x^2+x+1)/((x-1)*(x+1))^4.

The programs for A188067, the canonical program `A188067.P6013502910511196533` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188067 has offset 0).

The definition of A188067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^3+2x^4+x^5)/(1-4x^2+6x^4-4x^6+x^8))` (program `A188067.P6013502910511196533`, by `A188067.P6013502910511196533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188067.P6013502910511196533

`ogf((x^2+x^3+2x^4+x^5)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188067

/-- `ogf((x^2+x^3+2x^4+x^5)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P6013502910511196533.Spec : Prop :=
  ∀ n, P6013502910511196533.a n = A188067 n

theorem P6013502910511196533.correct : P6013502910511196533.Spec := by
  intro n
  simp only [A188067]

end A188067

/-! ## A188067.P10632490900425092839

`n*(n*(5*n+6)+(n²+6*n+2)*(-1)^n-2)/96`
-/

namespace A188067.P10632490900425092839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n * (5 * n + 6) : ℤ) + (n ^ 2 + 6 * n + 2 : ℤ) * (-1) ^ n - 2) : ℚ) / 96

end

end A188067.P10632490900425092839

namespace A188067

/-- `n*(n*(5*n+6)+(n²+6*n+2)*(-1)^n-2)/96` -/
def P10632490900425092839.Spec : Prop :=
  ∀ n, P10632490900425092839.a n = (A188067 n : ℚ)

end A188067

/-! ## A188067.P12016140295390891973

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=6, a(5)=5, a(6)=18, a(7)=14`
-/

namespace A188067.P12016140295390891973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 6, 5, 18, 14] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8)

end

end A188067.P12016140295390891973

namespace A188067

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P12016140295390891973.Spec : Prop :=
  ∀ n, P12016140295390891973.a n = A188067 n

end A188067

/-! ## A188067.P4565823592756763530

`A006918(n)+A000292(A142150(n))-A002620(n+1)`
-/

namespace A188067.P4565823592756763530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A000292 (A142150 n).toNat - A002620 (n + 1)

end

end A188067.P4565823592756763530

namespace A188067

/-- `A006918(n)+A000292(A142150(n))-A002620(n+1)` -/
def P4565823592756763530.Spec : Prop :=
  ∀ n, P4565823592756763530.a n = A188067 n

end A188067

/-!
# A188068: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=1, [ ]=floor.

The programs for A188068, the canonical program `A188068.P12204074435986584008` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188068 has offset 1).

The definition of A188068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188068.P12204074435986584008

`A007538(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188068

/-- `A007538(n+1)-2` -/
def P12204074435986584008.Spec : Prop :=
  ∀ n, P12204074435986584008.a n = A188068 (n + 1)

theorem P12204074435986584008.correct : P12204074435986584008.Spec := by
  intro n
  simp only [A188068, Nat.add_sub_cancel]

end A188068

/-! ## A188068.P10570738908165761225

`log2(Δ[floor(n*sqrt(3))])`
-/

namespace A188068.P10570738908165761225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A188068.P10570738908165761225

namespace A188068

/-- `log2(Δ[floor(n*sqrt(3))])` -/
def P10570738908165761225.Spec : Prop :=
  ∀ n, P10570738908165761225.a n = (A188068 (n + 1) : ℝ)

end A188068

/-! ## A188068.P6761803520125213665

`3%Δ[floor(n*sqrt(3))]`
-/

namespace A188068.P6761803520125213665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A188068.P6761803520125213665

namespace A188068

/-- `3%Δ[floor(n*sqrt(3))]` -/
def P6761803520125213665.Spec : Prop :=
  ∀ n, P6761803520125213665.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P3250674267665271715

`val(Δ[floor(n*sqrt(3))], 2)`
-/

namespace A188068.P3250674267665271715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A188068.P3250674267665271715

namespace A188068

/-- `val(Δ[floor(n*sqrt(3))], 2)` -/
def P3250674267665271715.Spec : Prop :=
  ∀ n, (P3250674267665271715.a n : ℤ) = A188068 (n + 1)

end A188068

/-! ## A188068.P18388914362676202381

`C(Δ[floor(n*sqrt(3))], 2)`
-/

namespace A188068.P18388914362676202381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A188068.P18388914362676202381

namespace A188068

/-- `C(Δ[floor(n*sqrt(3))], 2)` -/
def P18388914362676202381.Spec : Prop :=
  ∀ n, (P18388914362676202381.a n : ℤ) = A188068 (n + 1)

end A188068

/-! ## A188068.P6240981990416176537

`∑{e}[Δ[floor(n*sqrt(3))], #]`
-/

namespace A188068.P6240981990416176537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A188068.P6240981990416176537

namespace A188068

/-- `∑{e}[Δ[floor(n*sqrt(3))], #]` -/
def P6240981990416176537.Spec : Prop :=
  ∀ n, (P6240981990416176537.a n : ℤ) = A188068 (n + 1)

end A188068

/-! ## A188068.P15656041614006231224

`and(1, Δ[floor(n*sqrt(3))]+1)`
-/

namespace A188068.P15656041614006231224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + 1)

end

end A188068.P15656041614006231224

namespace A188068

/-- `and(1, Δ[floor(n*sqrt(3))]+1)` -/
def P15656041614006231224.Spec : Prop :=
  ∀ n, P15656041614006231224.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P12459291273983362286

`xor(2, Δ[floor(n*sqrt(3))]+1)`
-/

namespace A188068.P12459291273983362286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n + 1)

end

end A188068.P12459291273983362286

namespace A188068

/-- `xor(2, Δ[floor(n*sqrt(3))]+1)` -/
def P12459291273983362286.Spec : Prop :=
  ∀ n, P12459291273983362286.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P11930301900892817438

`A080757(n)-1`
-/

namespace A188068.P11930301900892817438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n - 1

end

end A188068.P11930301900892817438

namespace A188068

/-- `A080757(n)-1` -/
def P11930301900892817438.Spec : Prop :=
  ∀ n, P11930301900892817438.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P9140241362677994064

`1-Δ[A195120(n)]`
-/

namespace A188068.P9140241362677994064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A188068.P9140241362677994064

namespace A188068

/-- `1-Δ[A195120(n)]` -/
def P9140241362677994064.Spec : Prop :=
  ∀ n, P9140241362677994064.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P3811210690639215641

`char[A003511(n+1)]`
-/

namespace A188068.P3811210690639215641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188068.P3811210690639215641

namespace A188068

/-- `char[A003511(n+1)]` -/
def P3811210690639215641.Spec : Prop :=
  ∀ n, (P3811210690639215641.a n : ℤ) = A188068 (n + 1)

end A188068

/-! ## A188068.P16254607009271849264

`A276865(n+1)-3`
-/

namespace A188068.P16254607009271849264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) - 3

end

end A188068.P16254607009271849264

namespace A188068

/-- `A276865(n+1)-3` -/
def P16254607009271849264.Spec : Prop :=
  ∀ n, P16254607009271849264.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P6032504250644952369

`char[A188070(n+1)-1]`
-/

namespace A188068.P6032504250644952369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188068.P6032504250644952369

namespace A188068

/-- `char[A188070(n+1)-1]` -/
def P6032504250644952369.Spec : Prop :=
  ∀ n, (P6032504250644952369.a n : ℤ) = A188068 (n + 1)

end A188068

/-! ## A188068.P5384819311159904100

`A267272(Δ[A195120(n)])`
-/

namespace A188068.P5384819311159904100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (f1 (n + 1) - f1 n).toNat

end

end A188068.P5384819311159904100

namespace A188068

/-- `A267272(Δ[A195120(n)])` -/
def P5384819311159904100.Spec : Prop :=
  ∀ n, P5384819311159904100.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P12213428518637073798

`A057427(n)-A275855(n+1)`
-/

namespace A188068.P12213428518637073798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A275855 (n + 1)

end

end A188068.P12213428518637073798

namespace A188068

/-- `A057427(n)-A275855(n+1)` -/
def P12213428518637073798.Spec : Prop :=
  ∀ n, P12213428518637073798.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P2791217895778634251

`Δ[A188069(n+1)]-3`
-/

namespace A188068.P2791217895778634251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A188068.P2791217895778634251

namespace A188068

/-- `Δ[A188069(n+1)]-3` -/
def P2791217895778634251.Spec : Prop :=
  ∀ n, P2791217895778634251.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P1742661625960265466

`Δ[comp[A054406(n+1)]]-1`
-/

namespace A188068.P1742661625960265466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A188068.P1742661625960265466

namespace A188068

/-- `Δ[comp[A054406(n+1)]]-1` -/
def P1742661625960265466.Spec : Prop :=
  ∀ n, P1742661625960265466.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P1505254144550596376

`A188071(A188082(n+1)+n+1)`
-/

namespace A188068.P1505254144550596376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (A188082 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188068.P1505254144550596376

namespace A188068

/-- `A188071(A188082(n+1)+n+1)` -/
def P1505254144550596376.Spec : Prop :=
  ∀ n, P1505254144550596376.a n = A188068 (n + 1)

end A188068

/-! ## A188068.P13118904670679580039

`A188071(A188071(n+2)+n+1)`
-/

namespace A188068.P13118904670679580039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (A188071 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188068.P13118904670679580039

namespace A188068

/-- `A188071(A188071(n+2)+n+1)` -/
def P13118904670679580039.Spec : Prop :=
  ∀ n, P13118904670679580039.a n = A188068 (n + 1)

end A188068

/-!
# A188069: Positions of 0 in A188068; complement of A188070.

The programs for A188069, the canonical program `A188069.P9280577057709919834` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188069 has offset 1).

The definition of A188069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188069.P13219821405173147320

`comp[ceil(n/(sqrt(3)-1))]`
-/

namespace A188069.P13219821405173147320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188069.P13219821405173147320

namespace A188069

/-- `comp[ceil(n/(sqrt(3)-1))]` -/
def P13219821405173147320.Spec : Prop :=
  ∀ n, (P13219821405173147320.a n : ℤ) = A188069 (n + 1)

end A188069

/-! ## A188069.P6722218465812276861

`floor(comp[lcm(2, n)]+n*sqrt(3))`
-/

namespace A188069.P6722218465812276861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A188069.P6722218465812276861

namespace A188069

/-- `floor(comp[lcm(2, n)]+n*sqrt(3))` -/
def P6722218465812276861.Spec : Prop :=
  ∀ n, P6722218465812276861.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P16293381655250361348

`record[xor(1, n)]+floor(n*sqrt(3))`
-/

namespace A188069.P16293381655250361348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A188069.P16293381655250361348

namespace A188069

/-- `record[xor(1, n)]+floor(n*sqrt(3))` -/
def P16293381655250361348.Spec : Prop :=
  ∀ n, P16293381655250361348.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P9086262414876469584

`floor(or(1, 2*n)+n*sqrt(3))`
-/

namespace A188069.P9086262414876469584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A188069.P9086262414876469584

namespace A188069

/-- `floor(or(1, 2*n)+n*sqrt(3))` -/
def P9086262414876469584.Spec : Prop :=
  ∀ n, P9086262414876469584.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P14917489182333773660

`floor(xor(1, 2*n)+n*sqrt(3))`
-/

namespace A188069.P14917489182333773660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A188069.P14917489182333773660

namespace A188069

/-- `floor(xor(1, 2*n)+n*sqrt(3))` -/
def P14917489182333773660.Spec : Prop :=
  ∀ n, P14917489182333773660.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P16230048004215611663

`floor(n*root(3, 2))+xor(1, 2*n)`
-/

namespace A188069.P16230048004215611663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋ + (Nat.xor 1 (2 * n) : ℤ)

end

end A188069.P16230048004215611663

namespace A188069

/-- `floor(n*root(3, 2))+xor(1, 2*n)` -/
def P16230048004215611663.Spec : Prop :=
  ∀ n, P16230048004215611663.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P852883456317503382

`(A188075(n+1)+n)/4`
-/

namespace A188069.P852883456317503382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188075 (n + 1) + (n : ℤ) : ℚ) / 4

end

end A188069.P852883456317503382

namespace A188069

/-- `(A188075(n+1)+n)/4` -/
def P852883456317503382.Spec : Prop :=
  ∀ n, P852883456317503382.a n = (A188069 (n + 1) : ℚ)

end A188069

/-! ## A188069.P6584151423406321815

`A276865(n)+a(n-1)` with `a(0)=1`
-/

namespace A188069.P6584151423406321815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276865 n + a (n - 1)

end

end A188069.P6584151423406321815

namespace A188069

/-- `A276865(n)+a(n-1)` -/
def P6584151423406321815.Spec : Prop :=
  ∀ n, P6584151423406321815.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P8522172725377668153

`ceil(A004277(n)+n*sqrt(3))`
-/

namespace A188069.P8522172725377668153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004277 n : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌉

end

end A188069.P8522172725377668153

namespace A188069

/-- `ceil(A004277(n)+n*sqrt(3))` -/
def P8522172725377668153.Spec : Prop :=
  ∀ n, P8522172725377668153.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P8603160562345871910

`comp[A054406(n+1)]+Δ[n²]`
-/

namespace A188069.P8603160562345871910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A188069.P8603160562345871910

namespace A188069

/-- `comp[A054406(n+1)]+Δ[n²]` -/
def P8603160562345871910.Spec : Prop :=
  ∀ n, P8603160562345871910.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P14734222421796167533

`abs(A007538(n+1)-(ceil((sqrt(3)+2)*(n+1))-1))`
-/

namespace A188069.P14734222421796167533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007538 (n + 1) - (⌈(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌉ - 1)|

end

end A188069.P14734222421796167533

namespace A188069

/-- `abs(A007538(n+1)-(ceil((sqrt(3)+2)*(n+1))-1))` -/
def P14734222421796167533.Spec : Prop :=
  ∀ n, P14734222421796167533.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P9280577057709919834

`A198081(n)+A004277(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188069

/-- `A198081(n)+A004277(n)` -/
def P9280577057709919834.Spec : Prop :=
  ∀ n, P9280577057709919834.a n = A188069 (n + 1)

theorem P9280577057709919834.correct : P9280577057709919834.Spec := by
  intro n
  simp only [A188069, Nat.add_sub_cancel]

end A188069

/-! ## A188069.P18445583076250266088

`A215781(n)+A008486(n)`
-/

namespace A188069.P18445583076250266088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 n + A008486 n

end

end A188069.P18445583076250266088

namespace A188069

/-- `A215781(n)+A008486(n)` -/
def P18445583076250266088.Spec : Prop :=
  ∀ n, P18445583076250266088.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P14217669690187808674

`A016813(n)-A195120(n)`
-/

namespace A188069.P14217669690187808674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A195120 n

end

end A188069.P14217669690187808674

namespace A188069

/-- `A016813(n)-A195120(n)` -/
def P14217669690187808674.Spec : Prop :=
  ∀ n, P14217669690187808674.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P9929498282675524781

`A080590(n+1)+A057428(n)`
-/

namespace A188069.P9929498282675524781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) + A057428 n

end

end A188069.P9929498282675524781

namespace A188069

/-- `A080590(n+1)+A057428(n)` -/
def P9929498282675524781.Spec : Prop :=
  ∀ n, P9929498282675524781.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P3021564040112803144

`A004273(n)+A198081(n)+1`
-/

namespace A188069.P3021564040112803144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A198081 n + 1)

end

end A188069.P3021564040112803144

namespace A188069

/-- `A004273(n)+A198081(n)+1` -/
def P3021564040112803144.Spec : Prop :=
  ∀ n, P3021564040112803144.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P16753718611712797937

`A080590(n+1)-A057427(n)`
-/

namespace A188069.P16753718611712797937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - A057427 n

end

end A188069.P16753718611712797937

namespace A188069

/-- `A080590(n+1)-A057427(n)` -/
def P16753718611712797937.Spec : Prop :=
  ∀ n, P16753718611712797937.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P5314605096141351879

`A016825(n)-(A195120(n)+1)`
-/

namespace A188069.P5314605096141351879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - (A195120 n + 1)

end

end A188069.P5314605096141351879

namespace A188069

/-- `A016825(n)-(A195120(n)+1)` -/
def P5314605096141351879.Spec : Prop :=
  ∀ n, P5314605096141351879.a n = A188069 (n + 1)

end A188069

/-! ## A188069.P14318961546225328613

`A180123(n+1)-A080757(n)`
-/

namespace A188069.P14318961546225328613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) - A080757 n

end

end A188069.P14318961546225328613

namespace A188069

/-- `A180123(n+1)-A080757(n)` -/
def P14318961546225328613.Spec : Prop :=
  ∀ n, P14318961546225328613.a n = A188069 (n + 1)

end A188069

/-!
# A188070: Positions of 1 in A188068; complement of A188069.

The programs for A188070, the canonical program `A188070.P187749389523668513` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188070 has offset 1).

The definition of A188070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188070.P2973384375973343569

`comp[floor(n*sqrt(3))]-n`
-/

namespace A188070.P2973384375973343569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A188070.P2973384375973343569

namespace A188070

/-- `comp[floor(n*sqrt(3))]-n` -/
def P2973384375973343569.Spec : Prop :=
  ∀ n, P2973384375973343569.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P10254070029927470110

`∑[Δ[ceil(n/(sqrt(3)-1))]!]`
-/

namespace A188070.P10254070029927470110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188070.P10254070029927470110

namespace A188070

/-- `∑[Δ[ceil(n/(sqrt(3)-1))]!]` -/
def P10254070029927470110.Spec : Prop :=
  ∀ n, (P10254070029927470110.a n : ℤ) = A188070 (n + 1)

end A188070

/-! ## A188070.P7052358147110859742

`∑[A245222(n)]`
-/

namespace A188070.P7052358147110859742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188070.P7052358147110859742

namespace A188070

/-- `∑[A245222(n)]` -/
def P7052358147110859742.Spec : Prop :=
  ∀ n, P7052358147110859742.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P12384945715444516708

`round(sqrt(A194141(n+1)))`
-/

namespace A188070.P12384945715444516708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A194141 (n + 1) : ℝ))

end

end A188070.P12384945715444516708

namespace A188070

/-- `round(sqrt(A194141(n+1)))` -/
def P12384945715444516708.Spec : Prop :=
  ∀ n, P12384945715444516708.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P187749389523668513

`abs(A054406(n+1)-n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188070

/-- `abs(A054406(n+1)-n)` -/
def P187749389523668513.Spec : Prop :=
  ∀ n, P187749389523668513.a n = A188070 (n + 1)

theorem P187749389523668513.correct : P187749389523668513.Spec := by
  intro n
  simp only [A188070, Nat.add_sub_cancel]

end A188070

/-! ## A188070.P14181268783594602197

`round(sqrt(∑[A003512(n+1)]))`
-/

namespace A188070.P14181268783594602197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A188070.P14181268783594602197

namespace A188070

/-- `round(sqrt(∑[A003512(n+1)]))` -/
def P14181268783594602197.Spec : Prop :=
  ∀ n, P14181268783594602197.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P14993136121297991417

`∑[2-char[A186539(n+1)]]`
-/

namespace A188070.P14993136121297991417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188070.P14993136121297991417

namespace A188070

/-- `∑[2-char[A186539(n+1)]]` -/
def P14993136121297991417.Spec : Prop :=
  ∀ n, P14993136121297991417.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P3611189228804414356

`floor(A182778(n+1)/2-n)`
-/

namespace A188070.P3611189228804414356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182778 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A188070.P3611189228804414356

namespace A188070

/-- `floor(A182778(n+1)/2-n)` -/
def P3611189228804414356.Spec : Prop :=
  ∀ n, P3611189228804414356.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P576075969353315095

`(A188074(n+1)-(n+1))/3`
-/

namespace A188070.P576075969353315095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188074 (n + 1) - (n + 1 : ℤ) : ℚ) / 3

end

end A188070.P576075969353315095

namespace A188070

/-- `(A188074(n+1)-(n+1))/3` -/
def P576075969353315095.Spec : Prop :=
  ∀ n, P576075969353315095.a n = (A188070 (n + 1) : ℚ)

end A188070

/-! ## A188070.P7159434433065010731

`(A188088(n+1)-(n-2))/3`
-/

namespace A188070.P7159434433065010731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188088 (n + 1) - ((n : ℤ) - 2) : ℚ) / 3

end

end A188070.P7159434433065010731

namespace A188070

/-- `(A188088(n+1)-(n-2))/3` -/
def P7159434433065010731.Spec : Prop :=
  ∀ n, P7159434433065010731.a n = (A188070 (n + 1) : ℚ)

end A188070

/-! ## A188070.P15201700022454275414

`(A003511(n+1)+1)*(10*n+1)%2`
-/

namespace A188070.P15201700022454275414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003511 (n + 1) + 1) * (((10 * n + 1) % 2 : ℕ) : ℤ)

end

end A188070.P15201700022454275414

namespace A188070

/-- `(A003511(n+1)+1)*(10*n+1)%2` -/
def P15201700022454275414.Spec : Prop :=
  ∀ n, P15201700022454275414.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P5903926038455794234

`A020725(A003511(n+1))`
-/

namespace A188070.P5903926038455794234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A003511 (n + 1)).toNat

end

end A188070.P5903926038455794234

namespace A188070

/-- `A020725(A003511(n+1))` -/
def P5903926038455794234.Spec : Prop :=
  ∀ n, P5903926038455794234.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P14559403402888581023

`filter[n+1, A188068(#)]`
-/

namespace A188070.P14559403402888581023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188068 (f1 j) = 1) n)

end

end A188070.P14559403402888581023

namespace A188070

/-- `filter[n+1, A188068(#)]` -/
def P14559403402888581023.Spec : Prop :=
  ∀ n, (P14559403402888581023.a n : ℤ) = A188070 (n + 1)

end A188070

/-! ## A188070.P3195858971529016855

`record[(n+1)*log2(Δ[A022838(n+1)])+1]`
-/

namespace A188070.P3195858971529016855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (f2 (n + 1) - f2 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188070.P3195858971529016855

namespace A188070

/-- `record[(n+1)*log2(Δ[A022838(n+1)])+1]` -/
def P3195858971529016855.Spec : Prop :=
  ∀ n, P3195858971529016855.a n = (A188070 (n + 1) : ℝ)

end A188070

/-! ## A188070.P8376404649071664050

`A188568(A188568(A054406(n+1)-n))`
-/

namespace A188070.P8376404649071664050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (A188568 (A054406 (n + 1) - (n : ℤ)).toNat).toNat

end

end A188070.P8376404649071664050

namespace A188070

/-- `A188568(A188568(A054406(n+1)-n))` -/
def P8376404649071664050.Spec : Prop :=
  ∀ n, P8376404649071664050.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P7919109564048502076

`A194979(comp[floor(n*sqrt(3))])`
-/

namespace A188070.P7919109564048502076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188070.P7919109564048502076

namespace A188070

/-- `A194979(comp[floor(n*sqrt(3))])` -/
def P7919109564048502076.Spec : Prop :=
  ∀ n, P7919109564048502076.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P7975235945128546491

`A026254(A054406(n+1)+1)`
-/

namespace A188070.P7975235945128546491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A054406 (n + 1) + 1).toNat

end

end A188070.P7975235945128546491

namespace A188070

/-- `A026254(A054406(n+1)+1)` -/
def P7975235945128546491.Spec : Prop :=
  ∀ n, P7975235945128546491.a n = A188070 (n + 1)

end A188070

/-! ## A188070.P5331024335465949835

`A097337(A054406(n+1)+2)`
-/

namespace A188070.P5331024335465949835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054406 (n + 1) + 2).toNat

end

end A188070.P5331024335465949835

namespace A188070

/-- `A097337(A054406(n+1)+2)` -/
def P5331024335465949835.Spec : Prop :=
  ∀ n, P5331024335465949835.a n = A188070 (n + 1)

end A188070

/-!
# A188071: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=2, [ ]=floor.

The programs for A188071, the canonical program `A188071.P17843349248502599796` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188071 has offset 1).

The definition of A188071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188071.P17843349248502599796

`char[floor((n+1)*sqrt(27))%3+n]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188071

/-- `char[floor((n+1)*sqrt(27))%3+n]` -/
def P17843349248502599796.Spec : Prop :=
  ∀ n, (P17843349248502599796.a n : ℤ) = A188071 (n + 1)

theorem P17843349248502599796.correct : P17843349248502599796.Spec := by
  intro n
  simp only [A188071, Nat.add_sub_cancel]

end A188071

/-! ## A188071.P17500450366018139529

`A188068(2-A080757(n)+n)`
-/

namespace A188071.P17500450366018139529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 - A080757 n + (n : ℤ)).toNat

end

end A188071.P17500450366018139529

namespace A188071

/-- `A188068(2-A080757(n)+n)` -/
def P17500450366018139529.Spec : Prop :=
  ∀ n, P17500450366018139529.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P4881129074868170487

`char[A188070(A194979(n+1)+n)]`
-/

namespace A188071.P4881129074868170487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A194979 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188071.P4881129074868170487

namespace A188071

/-- `char[A188070(A194979(n+1)+n)]` -/
def P4881129074868170487.Spec : Prop :=
  ∀ n, (P4881129074868170487.a n : ℤ) = A188071 (n + 1)

end A188071

/-! ## A188071.P12864799965647164692

`A188068(n+1-A188068(n+1))`
-/

namespace A188071.P12864799965647164692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 ((n + 1 : ℤ) - A188068 (n + 1)).toNat

end

end A188071.P12864799965647164692

namespace A188071

/-- `A188068(n+1-A188068(n+1))` -/
def P12864799965647164692.Spec : Prop :=
  ∀ n, P12864799965647164692.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P13261118139665294300

`A188079(A180123(n+1))`
-/

namespace A188071.P13261118139665294300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A180123 (n + 1)).toNat

end

end A188071.P13261118139665294300

namespace A188071

/-- `A188079(A180123(n+1))` -/
def P13261118139665294300.Spec : Prop :=
  ∀ n, P13261118139665294300.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P5122885481775301454

`A188079(A003512(n+1)-1)`
-/

namespace A188071.P5122885481775301454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A003512 (n + 1) - 1).toNat

end

end A188071.P5122885481775301454

namespace A188071

/-- `A188079(A003512(n+1)-1)` -/
def P5122885481775301454.Spec : Prop :=
  ∀ n, P5122885481775301454.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P13910890041209324798

`A188076(A188069(n+1)+A188068(n+1))`
-/

namespace A188071.P13910890041209324798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A188069 (n + 1) + A188068 (n + 1)).toNat

end

end A188071.P13910890041209324798

namespace A188071

/-- `A188076(A188069(n+1)+A188068(n+1))` -/
def P13910890041209324798.Spec : Prop :=
  ∀ n, P13910890041209324798.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P16464054831937803353

`A188076(A188076(n+1)+A188069(n+1))`
-/

namespace A188071.P16464054831937803353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A188076 (n + 1) + A188069 (n + 1)).toNat

end

end A188071.P16464054831937803353

namespace A188071

/-- `A188076(A188076(n+1)+A188069(n+1))` -/
def P16464054831937803353.Spec : Prop :=
  ∀ n, P16464054831937803353.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P10478334126125417828

`A188076(A080590(n+1))*A188076(n+1)`
-/

namespace A188071.P10478334126125417828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A080590 (n + 1)).toNat * A188076 (n + 1)

end

end A188071.P10478334126125417828

namespace A188071

/-- `A188076(A080590(n+1))*A188076(n+1)` -/
def P10478334126125417828.Spec : Prop :=
  ∀ n, P10478334126125417828.a n = A188071 (n + 1)

end A188071

/-! ## A188071.P10581849357214588998

`char[A276883(n+2)]`
-/

namespace A188071.P10581849357214588998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276883 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188071.P10581849357214588998

namespace A188071

/-- `char[A276883(n+2)]` -/
def P10581849357214588998.Spec : Prop :=
  ∀ n, (P10581849357214588998.a n : ℤ) = A188071 (n + 1)

end A188071

/-!
# A188072: Positions of 0 in A188071; complement of A188073.

The programs for A188072, the canonical program `A188072.P9285876619016988220` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188072 has offset 1).

The definition of A188072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188072.P3877715850295788830

`floor(sqrt(3)*floor(n/2)+1+n)`
-/

namespace A188072.P3877715850295788830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (⌊(n : ℚ) / 2⌋ : ℝ) + 1 + (n : ℝ)⌋

end

end A188072.P3877715850295788830

namespace A188072

/-- `floor(sqrt(3)*floor(n/2)+1+n)` -/
def P3877715850295788830.Spec : Prop :=
  ∀ n, P3877715850295788830.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P4458655748260543757

`comp[A188085(n+1)+1]+1`
-/

namespace A188072.P4458655748260543757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188072.P4458655748260543757

namespace A188072

/-- `comp[A188085(n+1)+1]+1` -/
def P4458655748260543757.Spec : Prop :=
  ∀ n, (P4458655748260543757.a n : ℤ) = A188072 (n + 1)

end A188072

/-! ## A188072.P9285876619016988220

`A172475(A052928(n))+1+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188072

/-- `A172475(A052928(n))+1+n` -/
def P9285876619016988220.Spec : Prop :=
  ∀ n, P9285876619016988220.a n = A188072 (n + 1)

theorem P9285876619016988220.correct : P9285876619016988220.Spec := by
  intro n
  simp only [A188072, Nat.add_sub_cancel]

end A188072

/-! ## A188072.P14644429517993627396

`∪[A188069(n+1)+1, A188069(n+1)]`
-/

namespace A188072.P14644429517993627396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188072.P14644429517993627396

namespace A188072

/-- `∪[A188069(n+1)+1, A188069(n+1)]` -/
def P14644429517993627396.Spec : Prop :=
  ∀ n, (P14644429517993627396.a n : ℤ) = A188072 (n + 1)

end A188072

/-! ## A188072.P5589294639528098211

`A188069(A008619(n))+A000035(n)`
-/

namespace A188072.P5589294639528098211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A008619 n).toNat + A000035 n

end

end A188072.P5589294639528098211

namespace A188072

/-- `A188069(A008619(n))+A000035(n)` -/
def P5589294639528098211.Spec : Prop :=
  ∀ n, P5589294639528098211.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P4205712859623140485

`A172475(A005843(A004526(n)))+n+1`
-/

namespace A188072.P4205712859623140485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A005843 (A004526 n).toNat).toNat + (n + 1 : ℤ)

end

end A188072.P4205712859623140485

namespace A188072

/-- `A172475(A005843(A004526(n)))+n+1` -/
def P4205712859623140485.Spec : Prop :=
  ∀ n, P4205712859623140485.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P15853886159976423939

`A042963(n+1)-A195120(A004526(n))`
-/

namespace A188072.P15853886159976423939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A195120 (A004526 n).toNat

end

end A188072.P15853886159976423939

namespace A188072

/-- `A042963(n+1)-A195120(A004526(n))` -/
def P15853886159976423939.Spec : Prop :=
  ∀ n, P15853886159976423939.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P13213024594397642994

`A188069(A065033(n+1))+A000035(n)`
-/

namespace A188072.P13213024594397642994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A065033 (n + 1)).toNat + A000035 n

end

end A188072.P13213024594397642994

namespace A188072

/-- `A188069(A065033(n+1))+A000035(n)` -/
def P13213024594397642994.Spec : Prop :=
  ∀ n, P13213024594397642994.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P5380969528584455350

`A194979(A008486(A004526(n)))+n`
-/

namespace A188072.P5380969528584455350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A008486 (A004526 n).toNat).toNat + (n : ℤ)

end

end A188072.P5380969528584455350

namespace A188072

/-- `A194979(A008486(A004526(n)))+n` -/
def P5380969528584455350.Spec : Prop :=
  ∀ n, P5380969528584455350.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P10228480641459707236

`A188069(A008624(2*n))+A000035(n)`
-/

namespace A188072.P10228480641459707236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A008624 (2 * n)).toNat + A000035 n

end

end A188072.P10228480641459707236

namespace A188072

/-- `A188069(A008624(2*n))+A000035(n)` -/
def P10228480641459707236.Spec : Prop :=
  ∀ n, P10228480641459707236.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P13658882902721709259

`record[A026254(A198081(n)+2)]`
-/

namespace A188072.P13658882902721709259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A198081 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188072.P13658882902721709259

namespace A188072

/-- `record[A026254(A198081(n)+2)]` -/
def P13658882902721709259.Spec : Prop :=
  ∀ n, P13658882902721709259.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P5407534506052722149

`A202304(A008794(n))+1+n`
-/

namespace A188072.P5407534506052722149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A008794 n).toNat + 1 + (n : ℤ)

end

end A188072.P5407534506052722149

namespace A188072

/-- `A202304(A008794(n))+1+n` -/
def P5407534506052722149.Spec : Prop :=
  ∀ n, P5407534506052722149.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P17350083778868930140

`A202304(A004526(n)²)+n+1`
-/

namespace A188072.P17350083778868930140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A004526 n ^ 2).toNat + (n + 1 : ℤ)

end

end A188072.P17350083778868930140

namespace A188072

/-- `A202304(A004526(n)²)+n+1` -/
def P17350083778868930140.Spec : Prop :=
  ∀ n, P17350083778868930140.a n = A188072 (n + 1)

end A188072

/-! ## A188072.P8896489499773483270

`A278814(A004526(n)²)+n`
-/

namespace A188072.P8896489499773483270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A004526 n ^ 2).toNat + (n : ℤ)

end

end A188072.P8896489499773483270

namespace A188072

/-- `A278814(A004526(n)²)+n` -/
def P8896489499773483270.Spec : Prop :=
  ∀ n, P8896489499773483270.a n = A188072 (n + 1)

end A188072

/-!
# A188073: Positions of 1 in A188071; complement of A188072.

The programs for A188073, the canonical program `A188073.P840110206966327391` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188073 has offset 1).

The definition of A188073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188073.P840110206966327391

`2*(floor(sqrt(round((n+1)²/3)))+2)+n-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188073

/-- `2*(floor(sqrt(round((n+1)²/3)))+2)+n-1` -/
def P840110206966327391.Spec : Prop :=
  ∀ n, P840110206966327391.a n = A188073 (n + 1)

theorem P840110206966327391.correct : P840110206966327391.Spec := by
  intro n
  simp only [A188073, Nat.add_sub_cancel]

end A188073

/-! ## A188073.P103192798227320855

`∑[2*char[comp[A054406(n+1)]]+1]`
-/

namespace A188073.P103192798227320855
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188073.P103192798227320855

namespace A188073

/-- `∑[2*char[comp[A054406(n+1)]]+1]` -/
def P103192798227320855.Spec : Prop :=
  ∀ n, (P103192798227320855.a n : ℤ) = A188073 (n + 1)

end A188073

/-! ## A188073.P285613892732722358

`A188070(comp[floor(n*sqrt(3))+n]+1)`
-/

namespace A188073.P285613892732722358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A188073.P285613892732722358

namespace A188073

/-- `A188070(comp[floor(n*sqrt(3))+n]+1)` -/
def P285613892732722358.Spec : Prop :=
  ∀ n, P285613892732722358.a n = A188073 (n + 1)

end A188073

/-! ## A188073.P8187991075946923764

`∩[A188070(n+1)+1, A188070(n+1)]`
-/

namespace A188073.P8187991075946923764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188073.P8187991075946923764

namespace A188073

/-- `∩[A188070(n+1)+1, A188070(n+1)]` -/
def P8187991075946923764.Spec : Prop :=
  ∀ n, (P8187991075946923764.a n : ℤ) = A188073 (n + 1)

end A188073

/-! ## A188073.P12295895137713919570

`A009056(A188085(n+1))`
-/

namespace A188073.P12295895137713919570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A188085 (n + 1)).toNat

end

end A188073.P12295895137713919570

namespace A188073

/-- `A009056(A188085(n+1))` -/
def P12295895137713919570.Spec : Prop :=
  ∀ n, P12295895137713919570.a n = A188073 (n + 1)

end A188073

/-! ## A188073.P15504054543978272972

`filter[n+1, A188071(#)]`
-/

namespace A188073.P15504054543978272972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188071 (f1 j) = 1) n)

end

end A188073.P15504054543978272972

namespace A188073

/-- `filter[n+1, A188071(#)]` -/
def P15504054543978272972.Spec : Prop :=
  ∀ n, (P15504054543978272972.a n : ℤ) = A188073 (n + 1)

end A188073

/-! ## A188073.P9174164246375952328

`A194979(A182778(A194979(n+1))+n)`
-/

namespace A188073.P9174164246375952328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A182778 (A194979 (n + 1)).toNat + (n : ℤ)).toNat

end

end A188073.P9174164246375952328

namespace A188073

/-- `A194979(A182778(A194979(n+1))+n)` -/
def P9174164246375952328.Spec : Prop :=
  ∀ n, P9174164246375952328.a n = A188073 (n + 1)

end A188073

/-! ## A188073.P4480502991250438356

`A194979(A054406(A194979(n+1)+n+1))`
-/

namespace A188073.P4480502991250438356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A054406 (A194979 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A188073.P4480502991250438356

namespace A188073

/-- `A194979(A054406(A194979(n+1)+n+1))` -/
def P4480502991250438356.Spec : Prop :=
  ∀ n, P4480502991250438356.a n = A188073 (n + 1)

end A188073

/-! ## A188073.P7805342804911743217

`record[A052938(A180122(A052938(n)))]`
-/

namespace A188073.P7805342804911743217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A180122 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188073.P7805342804911743217

namespace A188073

/-- `record[A052938(A180122(A052938(n)))]` -/
def P7805342804911743217.Spec : Prop :=
  ∀ n, P7805342804911743217.a n = A188073 (n + 1)

end A188073

/-! ## A188073.P9812789361974933926

`A020725(A276883(n+2))`
-/

namespace A188073.P9812789361974933926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A276883 (n + 2)).toNat

end

end A188073.P9812789361974933926

namespace A188073

/-- `A020725(A276883(n+2))` -/
def P9812789361974933926.Spec : Prop :=
  ∀ n, P9812789361974933926.a n = A188073 (n + 1)

end A188073

/-!
# A188074: Positions of 1 in the zero-one sequence [n*r]-[3*r]-[n*r-3*r], where r=sqrt(3), n>=1.

The programs for A188074, the canonical program `A188074.P15532847428602426047` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188074 has offset 1).

The definition of A188074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188074.P6239124689026669230

`3*comp[floor(n*sqrt(3))]-2*(n+1)+3`
-/

namespace A188074.P6239124689026669230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * (n + 1) : ℤ) + 3

end

end A188074.P6239124689026669230

namespace A188074

/-- `3*comp[floor(n*sqrt(3))]-2*(n+1)+3` -/
def P6239124689026669230.Spec : Prop :=
  ∀ n, P6239124689026669230.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P15532847428602426047

`∑[A245222(n)²+3]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188074

/-- `∑[A245222(n)²+3]` -/
def P15532847428602426047.Spec : Prop :=
  ∀ n, P15532847428602426047.a n = A188074 (n + 1)

theorem P15532847428602426047.correct : P15532847428602426047.Spec := by
  intro n
  simp only [A188074, Nat.add_sub_cancel]

end A188074

/-! ## A188074.P15727743682077624342

`A003512(comp[floor(n*sqrt(3))]-n)`
-/

namespace A188074.P15727743682077624342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A188074.P15727743682077624342

namespace A188074

/-- `A003512(comp[floor(n*sqrt(3))]-n)` -/
def P15727743682077624342.Spec : Prop :=
  ∀ n, P15727743682077624342.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P8802901827885863413

`A003512(A188070(n+1))%A188075(n+4)`
-/

namespace A188074.P8802901827885863413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (A188070 (n + 1)).toNat) (A188075 (n + 4))

end

end A188074.P8802901827885863413

namespace A188074

/-- `A003512(A188070(n+1))%A188075(n+4)` -/
def P8802901827885863413.Spec : Prop :=
  ∀ n, P8802901827885863413.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P1966616975239934273

`A188081(2*(n+1))`
-/

namespace A188074.P1966616975239934273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (2 * (n + 1))

end

end A188074.P1966616975239934273

namespace A188074

/-- `A188081(2*(n+1))` -/
def P1966616975239934273.Spec : Prop :=
  ∀ n, P1966616975239934273.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P9692010566922342995

`A188073(A054406(n+1)+1)`
-/

namespace A188074.P9692010566922342995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (A054406 (n + 1) + 1).toNat

end

end A188074.P9692010566922342995

namespace A188074

/-- `A188073(A054406(n+1)+1)` -/
def P9692010566922342995.Spec : Prop :=
  ∀ n, P9692010566922342995.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P11100728617123729663

`∩[A188073(n+1)+1, A188073(n+1)]`
-/

namespace A188074.P11100728617123729663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188074.P11100728617123729663

namespace A188074

/-- `∩[A188073(n+1)+1, A188073(n+1)]` -/
def P11100728617123729663.Spec : Prop :=
  ∀ n, (P11100728617123729663.a n : ℤ) = A188074 (n + 1)

end A188074

/-! ## A188074.P2776794548397042062

`A009005(A188088(n+1))`
-/

namespace A188074.P2776794548397042062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A188088 (n + 1)).toNat

end

end A188074.P2776794548397042062

namespace A188074

/-- `A009005(A188088(n+1))` -/
def P2776794548397042062.Spec : Prop :=
  ∀ n, P2776794548397042062.a n = A188074 (n + 1)

end A188074

/-! ## A188074.P13227730958219428293

`eq[A188076(A054088(n+2)), A188076(n+2)]`
-/

namespace A188074.P13227730958219428293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A054088 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188074.P13227730958219428293

namespace A188074

/-- `eq[A188076(A054088(n+2)), A188076(n+2)]` -/
def P13227730958219428293.Spec : Prop :=
  ∀ n, (P13227730958219428293.a n : ℤ) = A188074 (n + 1)

end A188074

/-!
# A188075: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(3), n>=1.

The programs for A188075, the canonical program `A188075.P9684796969811370760` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188075 has offset 1).

The definition of A188075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188075.P9684796969811370760

`4*A188069(n+1)-n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188075

/-- `4*A188069(n+1)-n` -/
def P9684796969811370760.Spec : Prop :=
  ∀ n, P9684796969811370760.a n = A188075 (n + 1)

theorem P9684796969811370760.correct : P9684796969811370760.Spec := by
  intro n
  simp only [A188075, Nat.add_sub_cancel]

end A188075

/-! ## A188075.P7574231631621558641

`4*(A215781(n)+A008486(n))-n`
-/

namespace A188075.P7574231631621558641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A215781 n + A008486 n) - (n : ℤ)

end

end A188075.P7574231631621558641

namespace A188075

/-- `4*(A215781(n)+A008486(n))-n` -/
def P7574231631621558641.Spec : Prop :=
  ∀ n, P7574231631621558641.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P3280592091869635527

`4*(A180123(n+1)-A080757(n))-n`
-/

namespace A188075.P3280592091869635527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A180123 (n + 1) - A080757 n) - (n : ℤ)

end

end A188075.P3280592091869635527

namespace A188075

/-- `4*(A180123(n+1)-A080757(n))-n` -/
def P3280592091869635527.Spec : Prop :=
  ∀ n, P3280592091869635527.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P16259010276550306912

`A024000(n+1)+4*A188069(n+1)`
-/

namespace A188075.P16259010276550306912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + 4 * A188069 (n + 1)

end

end A188075.P16259010276550306912

namespace A188075

/-- `A024000(n+1)+4*A188069(n+1)` -/
def P16259010276550306912.Spec : Prop :=
  ∀ n, P16259010276550306912.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P10485171038691475473

`A016813(3*n-A195120(n))+3*(n+1)`
-/

namespace A188075.P10485171038691475473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((3 * n : ℤ) - A195120 n).toNat + (3 * (n + 1) : ℤ)

end

end A188075.P10485171038691475473

namespace A188075

/-- `A016813(3*n-A195120(n))+3*(n+1)` -/
def P10485171038691475473.Spec : Prop :=
  ∀ n, P10485171038691475473.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P16563709130668720609

`A188069(n+1)+A003512(A188069(n+1)-n)`
-/

namespace A188075.P16563709130668720609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) + A003512 (A188069 (n + 1) - (n : ℤ)).toNat

end

end A188075.P16563709130668720609

namespace A188075

/-- `A188069(n+1)+A003512(A188069(n+1)-n)` -/
def P16563709130668720609.Spec : Prop :=
  ∀ n, P16563709130668720609.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P2638699484923201380

`A003512(A188069(n+1))+1`
-/

namespace A188075.P2638699484923201380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A188069 (n + 1)).toNat + 1

end

end A188075.P2638699484923201380

namespace A188075

/-- `A003512(A188069(n+1))+1` -/
def P2638699484923201380.Spec : Prop :=
  ∀ n, P2638699484923201380.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P17386211949389098037

`A081840(A188069(n+1)+1)`
-/

namespace A188075.P17386211949389098037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081840 (A188069 (n + 1) + 1).toNat

end

end A188075.P17386211949389098037

namespace A188075

/-- `A081840(A188069(n+1)+1)` -/
def P17386211949389098037.Spec : Prop :=
  ∀ n, P17386211949389098037.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P428775204065230606

`A188069(A188069(n+1)+1)`
-/

namespace A188075.P428775204065230606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A188069 (n + 1) + 1).toNat

end

end A188075.P428775204065230606

namespace A188075

/-- `A188069(A188069(n+1)+1)` -/
def P428775204065230606.Spec : Prop :=
  ∀ n, P428775204065230606.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P9973019852216411305

`A180123(A188072(2*n+1))+2`
-/

namespace A188075.P9973019852216411305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A188072 (2 * n + 1)).toNat + 2

end

end A188075.P9973019852216411305

namespace A188075

/-- `A180123(A188072(2*n+1))+2` -/
def P9973019852216411305.Spec : Prop :=
  ∀ n, P9973019852216411305.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P2071543732799805718

`A008574(A215781(n)+A008486(n))-n`
-/

namespace A188075.P2071543732799805718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A215781 n + A008486 n).toNat - (n : ℤ)

end

end A188075.P2071543732799805718

namespace A188075

/-- `A008574(A215781(n)+A008486(n))-n` -/
def P2071543732799805718.Spec : Prop :=
  ∀ n, P2071543732799805718.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P2767576767467680877

`A180123(A180123(n+1)-A080757(n))+2`
-/

namespace A188075.P2767576767467680877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A180123 (n + 1) - A080757 n).toNat + 2

end

end A188075.P2767576767467680877

namespace A188075

/-- `A180123(A180123(n+1)-A080757(n))+2` -/
def P2767576767467680877.Spec : Prop :=
  ∀ n, P2767576767467680877.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P17160672675364484874

`A003512(A003512(n+1)-A007538(n+1))+1`
-/

namespace A188075.P17160672675364484874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A003512 (n + 1) - A007538 (n + 1)).toNat + 1

end

end A188075.P17160672675364484874

namespace A188075

/-- `A003512(A003512(n+1)-A007538(n+1))+1` -/
def P17160672675364484874.Spec : Prop :=
  ∀ n, P17160672675364484874.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P2661616582591726870

`A188077(A188072(2*(n+1))+n)`
-/

namespace A188075.P2661616582591726870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (A188072 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A188075.P2661616582591726870

namespace A188075

/-- `A188077(A188072(2*(n+1))+n)` -/
def P2661616582591726870.Spec : Prop :=
  ∀ n, P2661616582591726870.a n = A188075 (n + 1)

end A188075

/-! ## A188075.P876489732524162238

`∩[A188077(n+1)-1, A188077(n+1)]`
-/

namespace A188075.P876489732524162238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188075.P876489732524162238

namespace A188075

/-- `∩[A188077(n+1)-1, A188077(n+1)]` -/
def P876489732524162238.Spec : Prop :=
  ∀ n, (P876489732524162238.a n : ℤ) = A188075 (n + 1)

end A188075

/-! ## A188075.P5205675671686981159

`∩[A188072(n+1)+2, A188072(n+1)]`
-/

namespace A188075.P5205675671686981159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188075.P5205675671686981159

namespace A188075

/-- `∩[A188072(n+1)+2, A188072(n+1)]` -/
def P5205675671686981159.Spec : Prop :=
  ∀ n, (P5205675671686981159.a n : ℤ) = A188075 (n + 1)

end A188075

/-! ## A188075.P11879964635486866806

`A188072(A188072(2*n+1)+A188072(2*(n+1)))`
-/

namespace A188075.P11879964635486866806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (A188072 (2 * n + 1) + A188072 (2 * (n + 1))).toNat

end

end A188075.P11879964635486866806

namespace A188075

/-- `A188072(A188072(2*n+1)+A188072(2*(n+1)))` -/
def P11879964635486866806.Spec : Prop :=
  ∀ n, P11879964635486866806.a n = A188075 (n + 1)

end A188075

/-!
# A188076: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=5, [ ]=floor.

The programs for A188076, the canonical program `A188076.P9855669907760331095` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188076 has offset 1).

The definition of A188076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188076.P14087909904000985485

`char[A188078(n+1)-1]`
-/

namespace A188076.P14087909904000985485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188076.P14087909904000985485

namespace A188076

/-- `char[A188078(n+1)-1]` -/
def P14087909904000985485.Spec : Prop :=
  ∀ n, (P14087909904000985485.a n : ℤ) = A188076 (n + 1)

end A188076

/-! ## A188076.P9855669907760331095

`A188068(n+1)-char[A188075(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188076

/-- `A188068(n+1)-char[A188075(n+1)]` -/
def P9855669907760331095.Spec : Prop :=
  ∀ n, P9855669907760331095.a n = A188076 (n + 1)

theorem P9855669907760331095.correct : P9855669907760331095.Spec := by
  intro n
  simp only [A188076, Nat.add_sub_cancel]

end A188076

/-! ## A188076.P155164741138194851

`A188079(A188071(n+2)+n+1)`
-/

namespace A188076.P155164741138194851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A188071 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188076.P155164741138194851

namespace A188076

/-- `A188079(A188071(n+2)+n+1)` -/
def P155164741138194851.Spec : Prop :=
  ∀ n, P155164741138194851.a n = A188076 (n + 1)

end A188076

/-! ## A188076.P2991190882447617191

`A188079(A188079(n+2)+n+1)`
-/

namespace A188076.P2991190882447617191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A188079 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188076.P2991190882447617191

namespace A188076

/-- `A188079(A188079(n+2)+n+1)` -/
def P2991190882447617191.Spec : Prop :=
  ∀ n, P2991190882447617191.a n = A188076 (n + 1)

end A188076

/-! ## A188076.P17151828368458244178

`A188048(A137795(n+1)*A188093(n+1))`
-/

namespace A188076.P17151828368458244178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (A137795 (n + 1) * A188093 (n + 1)).toNat

end

end A188076.P17151828368458244178

namespace A188076

/-- `A188048(A137795(n+1)*A188093(n+1))` -/
def P17151828368458244178.Spec : Prop :=
  ∀ n, P17151828368458244178.a n = A188076 (n + 1)

end A188076

/-!
# A188077: Positions of 0 in A188076; complement of A188078.

The programs for A188077, the canonical program `A188077.P8196535750238244012` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188077 has offset 1).

The definition of A188077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188077.P8196535750238244012

`∩[A188080(n+1)-1, A188080(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A188077

/-- `∩[A188080(n+1)-1, A188080(n+1)]` -/
def P8196535750238244012.Spec : Prop :=
  ∀ n, (P8196535750238244012.a n : ℤ) = A188077 (n + 1)

theorem P8196535750238244012.correct : P8196535750238244012.Spec := by
  intro n
  simp only [A188077, Nat.add_sub_cancel]

end A188077

/-! ## A188077.P12747799415940056179

`record[A188080(n+2)/Δ[A188080(n+2)]]`
-/

namespace A188077.P12747799415940056179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188080 (n + 2) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188077.P12747799415940056179

namespace A188077

/-- `record[A188080(n+2)/Δ[A188080(n+2)]]` -/
def P12747799415940056179.Spec : Prop :=
  ∀ n, P12747799415940056179.a n = (A188077 (n + 1) : ℚ)

end A188077

/-! ## A188077.P10843717139370374816

`eq[A000007(n), A188076(A065033(2*n))]`
-/

namespace A188077.P10843717139370374816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188077.P10843717139370374816

namespace A188077

/-- `eq[A000007(n), A188076(A065033(2*n))]` -/
def P10843717139370374816.Spec : Prop :=
  ∀ n, (P10843717139370374816.a n : ℤ) = A188077 (n + 1)

end A188077

/-! ## A188077.P14406358031592177356

`eq[A000007(n), A188076(A123108(2*n))]`
-/

namespace A188077.P14406358031592177356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188077.P14406358031592177356

namespace A188077

/-- `eq[A000007(n), A188076(A123108(2*n))]` -/
def P14406358031592177356.Spec : Prop :=
  ∀ n, (P14406358031592177356.a n : ℤ) = A188077 (n + 1)

end A188077

/-! ## A188077.P18011896359034318331

`eq[A010051(2*(n+1)), A188076(A065033(2*n))]`
-/

namespace A188077.P18011896359034318331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188077.P18011896359034318331

namespace A188077

/-- `eq[A010051(2*(n+1)), A188076(A065033(2*n))]` -/
def P18011896359034318331.Spec : Prop :=
  ∀ n, (P18011896359034318331.a n : ℤ) = A188077 (n + 1)

end A188077

/-! ## A188077.P787844633664036258

`eq[A010051(2*(n+1)), A188076(A123108(2*n))]`
-/

namespace A188077.P787844633664036258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188077.P787844633664036258

namespace A188077

/-- `eq[A010051(2*(n+1)), A188076(A123108(2*n))]` -/
def P787844633664036258.Spec : Prop :=
  ∀ n, (P787844633664036258.a n : ℤ) = A188077 (n + 1)

end A188077

/-!
# A188078: Positions of 1 in A188076; complement of A188077.

The programs for A188078, the canonical program `A188078.P9875306825100740370` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188078 has offset 1).

The definition of A188078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188078.P5467207174167039300

`∪[A188081(n+1)-1, A188081(n+1)]`
-/

namespace A188078.P5467207174167039300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188078.P5467207174167039300

namespace A188078

/-- `∪[A188081(n+1)-1, A188081(n+1)]` -/
def P5467207174167039300.Spec : Prop :=
  ∀ n, (P5467207174167039300.a n : ℤ) = A188078 (n + 1)

end A188078

/-! ## A188078.P9875306825100740370

`filter[n+1, A188076(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188078

/-- `filter[n+1, A188076(#)]` -/
def P9875306825100740370.Spec : Prop :=
  ∀ n, (P9875306825100740370.a n : ℤ) = A188078 (n + 1)

theorem P9875306825100740370.correct : P9875306825100740370.Spec := by
  intro n
  simp only [A188078, Nat.add_sub_cancel]

end A188078

/-! ## A188078.P9220553595696871983

`record[2*A188076(n+2)+n]`
-/

namespace A188078.P9220553595696871983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188076 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188078.P9220553595696871983

namespace A188078

/-- `record[2*A188076(n+2)+n]` -/
def P9220553595696871983.Spec : Prop :=
  ∀ n, P9220553595696871983.a n = A188078 (n + 1)

end A188078

/-! ## A188078.P7908654555326905634

`eq[1, A188076(A065033(2*n))]`
-/

namespace A188078.P7908654555326905634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188078.P7908654555326905634

namespace A188078

/-- `eq[1, A188076(A065033(2*n))]` -/
def P7908654555326905634.Spec : Prop :=
  ∀ n, (P7908654555326905634.a n : ℤ) = A188078 (n + 1)

end A188078

/-! ## A188078.P1661833718635358784

`eq[1, A188076(A123108(2*n))]`
-/

namespace A188078.P1661833718635358784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188078.P1661833718635358784

namespace A188078

/-- `eq[1, A188076(A123108(2*n))]` -/
def P1661833718635358784.Spec : Prop :=
  ∀ n, (P1661833718635358784.a n : ℤ) = A188078 (n + 1)

end A188078

/-! ## A188078.P8948464116067445994

`eq[A188079(n+1), A188082(A123108(2*n))]`
-/

namespace A188078.P8948464116067445994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188078.P8948464116067445994

namespace A188078

/-- `eq[A188079(n+1), A188082(A123108(2*n))]` -/
def P8948464116067445994.Spec : Prop :=
  ∀ n, (P8948464116067445994.a n : ℤ) = A188078 (n + 1)

end A188078

/-! ## A188078.P6546048576315013478

`eq[1, A188079(A233583(n+1)+A188079(n+1))]`
-/

namespace A188078.P6546048576315013478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A233583 (n + 1) + A188079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188078.P6546048576315013478

namespace A188078

/-- `eq[1, A188079(A233583(n+1)+A188079(n+1))]` -/
def P6546048576315013478.Spec : Prop :=
  ∀ n, (P6546048576315013478.a n : ℤ) = A188078 (n + 1)

end A188078

/-!
# A188079: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(3), k=6, [ ]=floor.

The programs for A188079, the canonical program `A188079.P8949217459454897257` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188079 has offset 1).

The definition of A188079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188079.P3438740421489467674

`char[A188081(n+1)-1]`
-/

namespace A188079.P3438740421489467674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188079.P3438740421489467674

namespace A188079

/-- `char[A188081(n+1)-1]` -/
def P3438740421489467674.Spec : Prop :=
  ∀ n, (P3438740421489467674.a n : ℤ) = A188079 (n + 1)

end A188079

/-! ## A188079.P8949217459454897257

`A188076(n+1-A188068(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188079

/-- `A188076(n+1-A188068(n+1))` -/
def P8949217459454897257.Spec : Prop :=
  ∀ n, P8949217459454897257.a n = A188079 (n + 1)

theorem P8949217459454897257.correct : P8949217459454897257.Spec := by
  intro n
  simp only [A188079, Nat.add_sub_cancel]

end A188079

/-! ## A188079.P13610268868249576596

`A188076(n+1-A188076(n+1))`
-/

namespace A188079.P13610268868249576596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 ((n + 1 : ℤ) - A188076 (n + 1)).toNat

end

end A188079.P13610268868249576596

namespace A188079

/-- `A188076(n+1-A188076(n+1))` -/
def P13610268868249576596.Spec : Prop :=
  ∀ n, P13610268868249576596.a n = A188079 (n + 1)

end A188079

/-! ## A188079.P7148710947854928739

`A188076(n+1)*A188076(A028310(n))`
-/

namespace A188079.P7148710947854928739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (n + 1) * A188076 (A028310 n).toNat

end

end A188079.P7148710947854928739

namespace A188079

/-- `A188076(n+1)*A188076(A028310(n))` -/
def P7148710947854928739.Spec : Prop :=
  ∀ n, P7148710947854928739.a n = A188079 (n + 1)

end A188079

/-! ## A188079.P11725170936681662340

`char[A023443(A188081(n+1))]`
-/

namespace A188079.P11725170936681662340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188081 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188079.P11725170936681662340

namespace A188079

/-- `char[A023443(A188081(n+1))]` -/
def P11725170936681662340.Spec : Prop :=
  ∀ n, (P11725170936681662340.a n : ℤ) = A188079 (n + 1)

end A188079

/-! ## A188079.P5844690002917571376

`C(A040509(A137575(n+3)), A190704(n+1))`
-/

namespace A188079.P5844690002917571376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040509 (A137575 (n + 3)).toNat).toNat (A190704 (n + 1)).toNat

end

end A188079.P5844690002917571376

namespace A188079

/-- `C(A040509(A137575(n+3)), A190704(n+1))` -/
def P5844690002917571376.Spec : Prop :=
  ∀ n, (P5844690002917571376.a n : ℤ) = A188079 (n + 1)

end A188079

/-!
# A188080: Positions of 0 in A188079; complement of A188081.

The programs for A188080, the canonical program `A188080.P17840173988894253734` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188080 has offset 1).

The definition of A188080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188080.P10016227023183199501

`∪[A188077(n+1)+1, A188077(n+1)]`
-/

namespace A188080.P10016227023183199501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188080.P10016227023183199501

namespace A188080

/-- `∪[A188077(n+1)+1, A188077(n+1)]` -/
def P10016227023183199501.Spec : Prop :=
  ∀ n, (P10016227023183199501.a n : ℤ) = A188080 (n + 1)

end A188080

/-! ## A188080.P2414995388625986243

`record[cos(A188079(n+1))*(n+1)]`
-/

namespace A188080.P2414995388625986243
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A188079 (n + 1) : ℝ) * (n + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P2414995388625986243

namespace A188080

/-- `record[cos(A188079(n+1))*(n+1)]` -/
def P2414995388625986243.Spec : Prop :=
  ∀ n, P2414995388625986243.a n = (A188080 (n + 1) : ℝ)

end A188080

/-! ## A188080.P9059406399340233661

`record[n+1-A004158(n*A188079(n+1))]`
-/

namespace A188080.P9059406399340233661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004158 ((n : ℤ) * A188079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P9059406399340233661

namespace A188080

/-- `record[n+1-A004158(n*A188079(n+1))]` -/
def P9059406399340233661.Spec : Prop :=
  ∀ n, P9059406399340233661.a n = A188080 (n + 1)

end A188080

/-! ## A188080.P17840173988894253734

`record[(n+1)*A000007(n*A188079(n+1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A188080

/-- `record[(n+1)*A000007(n*A188079(n+1))]` -/
def P17840173988894253734.Spec : Prop :=
  ∀ n, P17840173988894253734.a n = A188080 (n + 1)

theorem P17840173988894253734.correct : P17840173988894253734.Spec := by
  intro n
  simp only [A188080, Nat.add_sub_cancel]

end A188080

/-! ## A188080.P12733490004406111081

`record[n+1-A006530(n+1)*A188079(n+1)]`
-/

namespace A188080.P12733490004406111081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A188079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P12733490004406111081

namespace A188080

/-- `record[n+1-A006530(n+1)*A188079(n+1)]` -/
def P12733490004406111081.Spec : Prop :=
  ∀ n, P12733490004406111081.a n = A188080 (n + 1)

end A188080

/-! ## A188080.P14569585430537377505

`record[(n+1)/A006530(n*A188079(n+1)+1)]`
-/

namespace A188080.P14569585430537377505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 ((n : ℤ) * A188079 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P14569585430537377505

namespace A188080

/-- `record[(n+1)/A006530(n*A188079(n+1)+1)]` -/
def P14569585430537377505.Spec : Prop :=
  ∀ n, P14569585430537377505.a n = (A188080 (n + 1) : ℚ)

end A188080

/-! ## A188080.P11582633363898433594

`record[A080513(n)/(A188079(A080513(n))+1)]`
-/

namespace A188080.P11582633363898433594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A188079 (A080513 n).toNat + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P11582633363898433594

namespace A188080

/-- `record[A080513(n)/(A188079(A080513(n))+1)]` -/
def P11582633363898433594.Spec : Prop :=
  ∀ n, P11582633363898433594.a n = (A188080 (n + 1) : ℚ)

end A188080

/-! ## A188080.P6360590284772325226

`record[A028242(2*n)-n*A188079(n+1)]`
-/

namespace A188080.P6360590284772325226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - (n : ℤ) * A188079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P6360590284772325226

namespace A188080

/-- `record[A028242(2*n)-n*A188079(n+1)]` -/
def P6360590284772325226.Spec : Prop :=
  ∀ n, P6360590284772325226.a n = A188080 (n + 1)

end A188080

/-! ## A188080.P2744356006955773972

`record[A008611(A016789(n))-n*A188079(n+1)]`
-/

namespace A188080.P2744356006955773972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A016789 n).toNat - (n : ℤ) * A188079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188080.P2744356006955773972

namespace A188080

/-- `record[A008611(A016789(n))-n*A188079(n+1)]` -/
def P2744356006955773972.Spec : Prop :=
  ∀ n, P2744356006955773972.a n = A188080 (n + 1)

end A188080

/-!
# A188081: Positions of 1 in A188079; complement of A188080.

The programs for A188081, the canonical program `A188081.P10757998736830450152` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188081 has offset 1).

The definition of A188081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188081.P10757998736830450152

`∩[A188078(n+1)+1, A188078(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A188081

/-- `∩[A188078(n+1)+1, A188078(n+1)]` -/
def P10757998736830450152.Spec : Prop :=
  ∀ n, (P10757998736830450152.a n : ℤ) = A188081 (n + 1)

theorem P10757998736830450152.correct : P10757998736830450152.Spec := by
  intro n
  simp only [A188081, Nat.add_sub_cancel]

end A188081

/-! ## A188081.P3137700713305532503

`filter[n+1, A188079(#)]`
-/

namespace A188081.P3137700713305532503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188079 (f1 j) = 1) n)

end

end A188081.P3137700713305532503

namespace A188081

/-- `filter[n+1, A188079(#)]` -/
def P3137700713305532503.Spec : Prop :=
  ∀ n, (P3137700713305532503.a n : ℤ) = A188081 (n + 1)

end A188081

/-! ## A188081.P9391519399726408119

`record[(n+3)*A188079(n+3)]`
-/

namespace A188081.P9391519399726408119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A188079 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188081.P9391519399726408119

namespace A188081

/-- `record[(n+3)*A188079(n+3)]` -/
def P9391519399726408119.Spec : Prop :=
  ∀ n, P9391519399726408119.a n = A188081 (n + 1)

end A188081

/-! ## A188081.P3605266169957705041

`lt[0, n*A188079(n+1)]+1`
-/

namespace A188081.P3605266169957705041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A188081.P3605266169957705041

namespace A188081

/-- `lt[0, n*A188079(n+1)]+1` -/
def P3605266169957705041.Spec : Prop :=
  ∀ n, (P3605266169957705041.a n : ℤ) = A188081 (n + 1)

end A188081

/-! ## A188081.P13547680754734923544

`eq[1, A188079(A065033(2*n))]`
-/

namespace A188081.P13547680754734923544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188081.P13547680754734923544

namespace A188081

/-- `eq[1, A188079(A065033(2*n))]` -/
def P13547680754734923544.Spec : Prop :=
  ∀ n, (P13547680754734923544.a n : ℤ) = A188081 (n + 1)

end A188081

/-! ## A188081.P4201194272313974398

`eq[1, A188079(A123108(2*n))]`
-/

namespace A188081.P4201194272313974398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188081.P4201194272313974398

namespace A188081

/-- `eq[1, A188079(A123108(2*n))]` -/
def P4201194272313974398.Spec : Prop :=
  ∀ n, (P4201194272313974398.a n : ℤ) = A188081 (n + 1)

end A188081

/-! ## A188081.P8406008673358789310

`eq[1, A188079(A233583(n+1))]`
-/

namespace A188081.P8406008673358789310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188081.P8406008673358789310

namespace A188081

/-- `eq[1, A188079(A233583(n+1))]` -/
def P8406008673358789310.Spec : Prop :=
  ∀ n, (P8406008673358789310.a n : ℤ) = A188081 (n + 1)

end A188081

/-!
# A188082: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=1, [ ]=floor.

The programs for A188082, the canonical program `A188082.P14647801940553537570` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188082 has offset 1).

The definition of A188082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188082.P14647801940553537570

`char[A003511(n+1)-1]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188082

/-- `char[A003511(n+1)-1]` -/
def P14647801940553537570.Spec : Prop :=
  ∀ n, (P14647801940553537570.a n : ℤ) = A188082 (n + 1)

theorem P14647801940553537570.correct : P14647801940553537570.Spec := by
  intro n
  simp only [A188082, Nat.add_sub_cancel]

end A188082

/-! ## A188082.P321845088717246876

`1-char[A180123(n+1)]`
-/

namespace A188082.P321845088717246876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188082.P321845088717246876

namespace A188082

/-- `1-char[A180123(n+1)]` -/
def P321845088717246876.Spec : Prop :=
  ∀ n, P321845088717246876.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P664672696654130915

`char[A188070(n+1)-2]`
-/

namespace A188082.P664672696654130915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188082.P664672696654130915

namespace A188082

/-- `char[A188070(n+1)-2]` -/
def P664672696654130915.Spec : Prop :=
  ∀ n, (P664672696654130915.a n : ℤ) = A188082 (n + 1)

end A188082

/-! ## A188082.P16423013159539989061

`A188083(n^a(n-1))` with `a(0)=1`
-/

namespace A188082.P16423013159539989061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188083 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A188082.P16423013159539989061

namespace A188082

/-- `A188083(n^a(n-1))` -/
def P16423013159539989061.Spec : Prop :=
  ∀ n, P16423013159539989061.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P11167993866998545949

`A188083(A188083(n+1)+n)`
-/

namespace A188082.P11167993866998545949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188083 (A188083 (n + 1) + (n : ℤ)).toNat

end

end A188082.P11167993866998545949

namespace A188082

/-- `A188083(A188083(n+1)+n)` -/
def P11167993866998545949.Spec : Prop :=
  ∀ n, P11167993866998545949.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P12406935629253413048

`A188068(n+2)`
-/

namespace A188082.P12406935629253413048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 2)

end

end A188082.P12406935629253413048

namespace A188082

/-- `A188068(n+2)` -/
def P12406935629253413048.Spec : Prop :=
  ∀ n, P12406935629253413048.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P11452406622593587287

`log2(A080757(n+1))`
-/

namespace A188082.P11452406622593587287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080757 (n + 1) : ℝ)

end

end A188082.P11452406622593587287

namespace A188082

/-- `log2(A080757(n+1))` -/
def P11452406622593587287.Spec : Prop :=
  ∀ n, P11452406622593587287.a n = (A188082 (n + 1) : ℝ)

end A188082

/-! ## A188082.P13043192074813246222

`1-A275855(n+2)`
-/

namespace A188082.P13043192074813246222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275855 (n + 2)

end

end A188082.P13043192074813246222

namespace A188082

/-- `1-A275855(n+2)` -/
def P13043192074813246222.Spec : Prop :=
  ∀ n, P13043192074813246222.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P6090735238008037620

`A007538(n+2)-2`
-/

namespace A188082.P6090735238008037620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 2) - 2

end

end A188082.P6090735238008037620

namespace A188082

/-- `A007538(n+2)-2` -/
def P6090735238008037620.Spec : Prop :=
  ∀ n, P6090735238008037620.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P3939832254319656999

`A276865(n+2)-3`
-/

namespace A188082.P3939832254319656999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 2) - 3

end

end A188082.P3939832254319656999

namespace A188082

/-- `A276865(n+2)-3` -/
def P3939832254319656999.Spec : Prop :=
  ∀ n, P3939832254319656999.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P9072732110474761951

`log2(Δ[A022838(n+1)])`
-/

namespace A188082.P9072732110474761951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A188082.P9072732110474761951

namespace A188082

/-- `log2(Δ[A022838(n+1)])` -/
def P9072732110474761951.Spec : Prop :=
  ∀ n, P9072732110474761951.a n = (A188082 (n + 1) : ℝ)

end A188082

/-! ## A188082.P8306316110048871197

`log2(Δ[A198081(n+1)])`
-/

namespace A188082.P8306316110048871197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A188082.P8306316110048871197

namespace A188082

/-- `log2(Δ[A198081(n+1)])` -/
def P8306316110048871197.Spec : Prop :=
  ∀ n, P8306316110048871197.a n = (A188082 (n + 1) : ℝ)

end A188082

/-! ## A188082.P1491305453142864103

`floor(ratio[A007538(n+1)])`
-/

namespace A188082.P1491305453142864103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A188082.P1491305453142864103

namespace A188082

/-- `floor(ratio[A007538(n+1)])` -/
def P1491305453142864103.Spec : Prop :=
  ∀ n, P1491305453142864103.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P5677592991733205965

`floor(ratio[A276865(n+1)])`
-/

namespace A188082.P5677592991733205965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A188082.P5677592991733205965

namespace A188082

/-- `floor(ratio[A276865(n+1)])` -/
def P5677592991733205965.Spec : Prop :=
  ∀ n, P5677592991733205965.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P8517694996787758003

`1-Δ[A195120(n+1)]`
-/

namespace A188082.P8517694996787758003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A188082.P8517694996787758003

namespace A188082

/-- `1-Δ[A195120(n+1)]` -/
def P8517694996787758003.Spec : Prop :=
  ∀ n, P8517694996787758003.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P11776288409321296815

`Δ[A054088(n+1)]-2`
-/

namespace A188082.P11776288409321296815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A188082.P11776288409321296815

namespace A188082

/-- `Δ[A054088(n+1)]-2` -/
def P11776288409321296815.Spec : Prop :=
  ∀ n, P11776288409321296815.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P6509373740604526097

`Δ[A180122(n+1)]-2`
-/

namespace A188082.P6509373740604526097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A188082.P6509373740604526097

namespace A188082

/-- `Δ[A180122(n+1)]-2` -/
def P6509373740604526097.Spec : Prop :=
  ∀ n, P6509373740604526097.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P11543293334361224805

`2-Δ[A182777(n+1)]`
-/

namespace A188082.P11543293334361224805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A188082.P11543293334361224805

namespace A188082

/-- `2-Δ[A182777(n+1)]` -/
def P11543293334361224805.Spec : Prop :=
  ∀ n, P11543293334361224805.a n = A188082 (n + 1)

end A188082

/-! ## A188082.P12445716458082405923

`Δ[A003512(n+1)]-3`
-/

namespace A188082.P12445716458082405923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A188082.P12445716458082405923

namespace A188082

/-- `Δ[A003512(n+1)]-3` -/
def P12445716458082405923.Spec : Prop :=
  ∀ n, P12445716458082405923.a n = A188082 (n + 1)

end A188082

/-!
# A188083: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=2, [ ]=floor.

The programs for A188083, the canonical program `A188083.P8593130762785517257` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188083 has offset 1).

The definition of A188083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188083.P8593130762785517257

`A144612(A138466(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188083

/-- `A144612(A138466(n+1))` -/
def P8593130762785517257.Spec : Prop :=
  ∀ n, P8593130762785517257.a n = A188083 (n + 1)

theorem P8593130762785517257.correct : P8593130762785517257.Spec := by
  intro n
  simp only [A188083, Nat.add_sub_cancel]

end A188083

/-! ## A188083.P5127626911793689021

`val(Δ[A044453(n+1)], 16)`
-/

namespace A188083.P5127626911793689021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 16

end

end A188083.P5127626911793689021

namespace A188083

/-- `val(Δ[A044453(n+1)], 16)` -/
def P5127626911793689021.Spec : Prop :=
  ∀ n, (P5127626911793689021.a n : ℤ) = A188083 (n + 1)

end A188083

/-! ## A188083.P14753139661031535524

`A188082(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A188083.P14753139661031535524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188082 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A188083.P14753139661031535524

namespace A188083

/-- `A188082(a(n-1)+n+1)` -/
def P14753139661031535524.Spec : Prop :=
  ∀ n, P14753139661031535524.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P14919452900389720224

`A188082(A188082(n+1)+n+1)`
-/

namespace A188083.P14919452900389720224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (A188082 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188083.P14919452900389720224

namespace A188083

/-- `A188082(A188082(n+1)+n+1)` -/
def P14919452900389720224.Spec : Prop :=
  ∀ n, P14919452900389720224.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P16649486419525834338

`A144612(A022838(n+2)-(n+2))`
-/

namespace A188083.P16649486419525834338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (A022838 (n + 2) - (n + 2 : ℤ)).toNat

end

end A188083.P16649486419525834338

namespace A188083

/-- `A144612(A022838(n+2)-(n+2))` -/
def P16649486419525834338.Spec : Prop :=
  ∀ n, P16649486419525834338.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P6543324824410060995

`A188071(n+3)`
-/

namespace A188083.P6543324824410060995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (n + 3)

end

end A188083.P6543324824410060995

namespace A188083

/-- `A188071(n+3)` -/
def P6543324824410060995.Spec : Prop :=
  ∀ n, P6543324824410060995.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P11450403105705158226

`A188068(A007538(n+2)+n)`
-/

namespace A188083.P11450403105705158226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A007538 (n + 2) + (n : ℤ)).toNat

end

end A188083.P11450403105705158226

namespace A188083

/-- `A188068(A007538(n+2)+n)` -/
def P11450403105705158226.Spec : Prop :=
  ∀ n, P11450403105705158226.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P10578335568678841145

`A188068(A080757(n+1)+n+1)`
-/

namespace A188083.P10578335568678841145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A080757 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188083.P10578335568678841145

namespace A188083

/-- `A188068(A080757(n+1)+n+1)` -/
def P10578335568678841145.Spec : Prop :=
  ∀ n, P10578335568678841145.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P6168446455860355758

`A188068(A188068(n+2)+n+2)`
-/

namespace A188083.P6168446455860355758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A188068 (n + 2) + (n + 2 : ℤ)).toNat

end

end A188083.P6168446455860355758

namespace A188083

/-- `A188068(A188068(n+2)+n+2)` -/
def P6168446455860355758.Spec : Prop :=
  ∀ n, P6168446455860355758.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P15324690081471062718

`A188093(A080590(n+2))`
-/

namespace A188083.P15324690081471062718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188093 (A080590 (n + 2)).toNat

end

end A188083.P15324690081471062718

namespace A188083

/-- `A188093(A080590(n+2))` -/
def P15324690081471062718.Spec : Prop :=
  ∀ n, P15324690081471062718.a n = A188083 (n + 1)

end A188083

/-! ## A188083.P3392027350685070752

`A194667(∑[n]+2)`
-/

namespace A188083.P3392027350685070752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194667 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188083.P3392027350685070752

namespace A188083

/-- `A194667(∑[n]+2)` -/
def P3392027350685070752.Spec : Prop :=
  ∀ n, P3392027350685070752.a n = A188083 (n + 1)

end A188083

/-!
# A188084: Positions of 0 in A188083; complement of A188084.

The programs for A188084, the canonical program `A188084.P3866804258431948867` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188084 has offset 1).

The definition of A188084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188084.P3366453469731970994

`comp[A188085(n+1)-1]+1`
-/

namespace A188084.P3366453469731970994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188084.P3366453469731970994

namespace A188084

/-- `comp[A188085(n+1)-1]+1` -/
def P3366453469731970994.Spec : Prop :=
  ∀ n, (P3366453469731970994.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P3866804258431948867

`A198081(∑[(n+1)%2])+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188084

/-- `A198081(∑[(n+1)%2])+n` -/
def P3866804258431948867.Spec : Prop :=
  ∀ n, P3866804258431948867.a n = A188084 (n + 1)

theorem P3866804258431948867.correct : P3866804258431948867.Spec := by
  intro n
  simp only [A188084, Nat.add_sub_cancel]

end A188084

/-! ## A188084.P12907948365605682207

`A022838(∑[char[2*n]])+n+1`
-/

namespace A188084.P12907948365605682207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A188084.P12907948365605682207

namespace A188084

/-- `A022838(∑[char[2*n]])+n+1` -/
def P12907948365605682207.Spec : Prop :=
  ∀ n, P12907948365605682207.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P5953750721047997416

`A198081(A008619(n))+n`
-/

namespace A188084.P5953750721047997416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A008619 n).toNat + (n : ℤ)

end

end A188084.P5953750721047997416

namespace A188084

/-- `A198081(A008619(n))+n` -/
def P5953750721047997416.Spec : Prop :=
  ∀ n, P5953750721047997416.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P13245297294558300814

`A198081(∑[A059841(n)])+n`
-/

namespace A188084.P13245297294558300814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A188084.P13245297294558300814

namespace A188084

/-- `A198081(∑[A059841(n)])+n` -/
def P13245297294558300814.Spec : Prop :=
  ∀ n, P13245297294558300814.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P16062680153887520626

`A198081(A004526(n)+1)+n`
-/

namespace A188084.P16062680153887520626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A004526 n + 1).toNat + (n : ℤ)

end

end A188084.P16062680153887520626

namespace A188084

/-- `A198081(A004526(n)+1)+n` -/
def P16062680153887520626.Spec : Prop :=
  ∀ n, P16062680153887520626.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P4133458959456387870

`n+1+A022838(A110654(n+1))`
-/

namespace A188084.P4133458959456387870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A022838 (A110654 (n + 1)).toNat

end

end A188084.P4133458959456387870

namespace A188084

/-- `n+1+A022838(A110654(n+1))` -/
def P4133458959456387870.Spec : Prop :=
  ∀ n, P4133458959456387870.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P2742840515303010789

`∪[A003512(n+1), A180123(n+1)]`
-/

namespace A188084.P2742840515303010789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P2742840515303010789

namespace A188084

/-- `∪[A003512(n+1), A180123(n+1)]` -/
def P2742840515303010789.Spec : Prop :=
  ∀ n, (P2742840515303010789.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P2191811166101077572

`∪[A180123(n+1), A188073(n+1)]`
-/

namespace A188084.P2191811166101077572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P2191811166101077572

namespace A188084

/-- `∪[A180123(n+1), A188073(n+1)]` -/
def P2191811166101077572.Spec : Prop :=
  ∀ n, (P2191811166101077572.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P6869124779114406492

`∪[A180123(n+1), A188081(n+1)]`
-/

namespace A188084.P6869124779114406492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P6869124779114406492

namespace A188084

/-- `∪[A180123(n+1), A188081(n+1)]` -/
def P6869124779114406492.Spec : Prop :=
  ∀ n, (P6869124779114406492.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P18348361210559077732

`∪[A180123(n+1), A188091(n+1)]`
-/

namespace A188084.P18348361210559077732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P18348361210559077732

namespace A188084

/-- `∪[A180123(n+1), A188091(n+1)]` -/
def P18348361210559077732.Spec : Prop :=
  ∀ n, (P18348361210559077732.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P7798453355573435318

`∪[A180123(n+1), A190670(n+1)]`
-/

namespace A188084.P7798453355573435318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P7798453355573435318

namespace A188084

/-- `∪[A180123(n+1), A190670(n+1)]` -/
def P7798453355573435318.Spec : Prop :=
  ∀ n, (P7798453355573435318.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P16440916633001536055

`∪[A180123(n+1), A190677(n+1)]`
-/

namespace A188084.P16440916633001536055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188084.P16440916633001536055

namespace A188084

/-- `∪[A180123(n+1), A190677(n+1)]` -/
def P16440916633001536055.Spec : Prop :=
  ∀ n, (P16440916633001536055.a n : ℤ) = A188084 (n + 1)

end A188084

/-! ## A188084.P9069010020725665583

`A180122(A008619(n))+A008619(n+1)`
-/

namespace A188084.P9069010020725665583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (A008619 n).toNat + A008619 (n + 1)

end

end A188084.P9069010020725665583

namespace A188084

/-- `A180122(A008619(n))+A008619(n+1)` -/
def P9069010020725665583.Spec : Prop :=
  ∀ n, P9069010020725665583.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P14339057966044608593

`A198081(A065033(n+1))+n`
-/

namespace A188084.P14339057966044608593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A065033 (n + 1)).toNat + (n : ℤ)

end

end A188084.P14339057966044608593

namespace A188084

/-- `A198081(A065033(n+1))+n` -/
def P14339057966044608593.Spec : Prop :=
  ∀ n, P14339057966044608593.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P144533849049803188

`A188072(n+3)-2`
-/

namespace A188084.P144533849049803188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (n + 3) - 2

end

end A188084.P144533849049803188

namespace A188084

/-- `A188072(n+3)-2` -/
def P144533849049803188.Spec : Prop :=
  ∀ n, P144533849049803188.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P12241094785699701997

`A172475(and(n+2, -2))+n+1`
-/

namespace A188084.P12241094785699701997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (Int.land (n + 2 : ℤ) (-2)).toNat + (n + 1 : ℤ)

end

end A188084.P12241094785699701997

namespace A188084

/-- `A172475(and(n+2, -2))+n+1` -/
def P12241094785699701997.Spec : Prop :=
  ∀ n, P12241094785699701997.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P16524492152474219317

`A188087(A007494(n+1))`
-/

namespace A188084.P16524492152474219317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 (A007494 (n + 1)).toNat

end

end A188084.P16524492152474219317

namespace A188084

/-- `A188087(A007494(n+1))` -/
def P16524492152474219317.Spec : Prop :=
  ∀ n, P16524492152474219317.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P1344156887400253176

`A188087(A294732(n+3))`
-/

namespace A188084.P1344156887400253176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188087 (A294732 (n + 3)).toNat

end

end A188084.P1344156887400253176

namespace A188084

/-- `A188087(A294732(n+3))` -/
def P1344156887400253176.Spec : Prop :=
  ∀ n, P1344156887400253176.a n = A188084 (n + 1)

end A188084

/-! ## A188084.P12129709825463890464

`eq[1, A188076(A054088(n+2))]`
-/

namespace A188084.P12129709825463890464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A054088 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188084.P12129709825463890464

namespace A188084

/-- `eq[1, A188076(A054088(n+2))]` -/
def P12129709825463890464.Spec : Prop :=
  ∀ n, (P12129709825463890464.a n : ℤ) = A188084 (n + 1)

end A188084

/-!
# A188085: Positions of 1 in A188083; complement of A188084.

The programs for A188085, the canonical program `A188085.P18175226881759273036` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188085 has offset 1).

The definition of A188085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188085.P2251306970417042949

`comp[floor(sqrt(3)*floor(n/2)+1+n)-2]`
-/

namespace A188085.P2251306970417042949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (⌊(n : ℚ) / 2⌋ : ℝ) + 1 + (n : ℝ)⌋ - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188085.P2251306970417042949

namespace A188085

/-- `comp[floor(sqrt(3)*floor(n/2)+1+n)-2]` -/
def P2251306970417042949.Spec : Prop :=
  ∀ n, (P2251306970417042949.a n : ℤ) = A188085 (n + 1)

end A188085

/-! ## A188085.P18175226881759273036

`A188073(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188085

/-- `A188073(n+1)-2` -/
def P18175226881759273036.Spec : Prop :=
  ∀ n, P18175226881759273036.a n = A188085 (n + 1)

theorem P18175226881759273036.correct : P18175226881759273036.Spec := by
  intro n
  simp only [A188085, Nat.add_sub_cancel]

end A188085

/-! ## A188085.P3143337606192053913

`2*A097337(n+1)+1+n`
-/

namespace A188085.P3143337606192053913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097337 (n + 1) + 1 + (n : ℤ)

end

end A188085.P3143337606192053913

namespace A188085

/-- `2*A097337(n+1)+1+n` -/
def P3143337606192053913.Spec : Prop :=
  ∀ n, P3143337606192053913.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P9623089283853549973

`2*A186539(n+1)-(n+1)`
-/

namespace A188085.P9623089283853549973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186539 (n + 1) - (n + 1 : ℤ)

end

end A188085.P9623089283853549973

namespace A188085

/-- `2*A186539(n+1)-(n+1)` -/
def P9623089283853549973.Spec : Prop :=
  ∀ n, P9623089283853549973.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P10464075073197580660

`2*A194979(n+1)+n-1`
-/

namespace A188085.P10464075073197580660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194979 (n + 1) + ((n : ℤ) - 1)

end

end A188085.P10464075073197580660

namespace A188085

/-- `2*A194979(n+1)+n-1` -/
def P10464075073197580660.Spec : Prop :=
  ∀ n, P10464075073197580660.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P3354516505451256856

`∑[2*char[A022838(n+1)]+1]`
-/

namespace A188085.P3354516505451256856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188085.P3354516505451256856

namespace A188085

/-- `∑[2*char[A022838(n+1)]+1]` -/
def P3354516505451256856.Spec : Prop :=
  ∀ n, (P3354516505451256856.a n : ℤ) = A188085 (n + 1)

end A188085

/-! ## A188085.P5113898630315528219

`2*∑[char[comp[A054406(n+1)]]]+n-1`
-/

namespace A188085.P5113898630315528219
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A188085.P5113898630315528219

namespace A188085

/-- `2*∑[char[comp[A054406(n+1)]]]+n-1` -/
def P5113898630315528219.Spec : Prop :=
  ∀ n, P5113898630315528219.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P14378488827866216240

`A005408(A097337(n+1))+n`
-/

namespace A188085.P14378488827866216240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A097337 (n + 1)).toNat + (n : ℤ)

end

end A188085.P14378488827866216240

namespace A188085

/-- `A005408(A097337(n+1))+n` -/
def P14378488827866216240.Spec : Prop :=
  ∀ n, P14378488827866216240.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P17936227195801084730

`∑[A052938(2-Δ[A195129(n)])]`
-/

namespace A188085.P17936227195801084730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188085.P17936227195801084730

namespace A188085

/-- `∑[A052938(2-Δ[A195129(n)])]` -/
def P17936227195801084730.Spec : Prop :=
  ∀ n, P17936227195801084730.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P2867441941494700206

`A186539(n+1)+A097337(n+1)`
-/

namespace A188085.P2867441941494700206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + A097337 (n + 1)

end

end A188085.P2867441941494700206

namespace A188085

/-- `A186539(n+1)+A097337(n+1)` -/
def P2867441941494700206.Spec : Prop :=
  ∀ n, P2867441941494700206.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P17731296592968154122

`A005843(A194979(n+1))-1+n`
-/

namespace A188085.P17731296592968154122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A194979 (n + 1)).toNat - 1 + (n : ℤ)

end

end A188085.P17731296592968154122

namespace A188085

/-- `A005843(A194979(n+1))-1+n` -/
def P17731296592968154122.Spec : Prop :=
  ∀ n, P17731296592968154122.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P13515218444555152477

`A182771(n+1)-A195072(n+1)`
-/

namespace A188085.P13515218444555152477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182771 (n + 1) - A195072 (n + 1)

end

end A188085.P13515218444555152477

namespace A188085

/-- `A182771(n+1)-A195072(n+1)` -/
def P13515218444555152477.Spec : Prop :=
  ∀ n, P13515218444555152477.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P4054889670414651535

`A097337(n+1)+A194979(n+1)+n`
-/

namespace A188085.P4054889670414651535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (A194979 (n + 1) + (n : ℤ))

end

end A188085.P4054889670414651535

namespace A188085

/-- `A097337(n+1)+A194979(n+1)+n` -/
def P4054889670414651535.Spec : Prop :=
  ∀ n, P4054889670414651535.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P16569271730064765367

`A189383(n+1)+A189397(n+1)-A189387(n+1)`
-/

namespace A188085.P16569271730064765367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189383 (n + 1) + (A189397 (n + 1) - A189387 (n + 1))

end

end A188085.P16569271730064765367

namespace A188085

/-- `A189383(n+1)+A189397(n+1)-A189387(n+1)` -/
def P16569271730064765367.Spec : Prop :=
  ∀ n, P16569271730064765367.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P7528864874646427423

`A003511(A186539(n+1))`
-/

namespace A188085.P7528864874646427423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A186539 (n + 1)).toNat

end

end A188085.P7528864874646427423

namespace A188085

/-- `A003511(A186539(n+1))` -/
def P7528864874646427423.Spec : Prop :=
  ∀ n, P7528864874646427423.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P190913027059862109

`A003511(A194979(n+1)+n)`
-/

namespace A188085.P190913027059862109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A194979 (n + 1) + (n : ℤ)).toNat

end

end A188085.P190913027059862109

namespace A188085

/-- `A003511(A194979(n+1)+n)` -/
def P190913027059862109.Spec : Prop :=
  ∀ n, P190913027059862109.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P15440652936314775900

`A003511(A097337(n+1)+1+n)`
-/

namespace A188085.P15440652936314775900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A097337 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188085.P15440652936314775900

namespace A188085

/-- `A003511(A097337(n+1)+1+n)` -/
def P15440652936314775900.Spec : Prop :=
  ∀ n, P15440652936314775900.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P12984857293616897694

`A188070(A194979(n+1)+n)-1`
-/

namespace A188085.P12984857293616897694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A194979 (n + 1) + (n : ℤ)).toNat - 1

end

end A188085.P12984857293616897694

namespace A188085

/-- `A188070(A194979(n+1)+n)-1` -/
def P12984857293616897694.Spec : Prop :=
  ∀ n, P12984857293616897694.a n = A188085 (n + 1)

end A188085

/-! ## A188085.P13442348335038595632

`∩[A003511(n+1)-1, A003511(n+1)]`
-/

namespace A188085.P13442348335038595632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188085.P13442348335038595632

namespace A188085

/-- `∩[A003511(n+1)-1, A003511(n+1)]` -/
def P13442348335038595632.Spec : Prop :=
  ∀ n, (P13442348335038595632.a n : ℤ) = A188085 (n + 1)

end A188085

/-! ## A188085.P5321441219449606194

`filter[n+1, A188083(#)]`
-/

namespace A188085.P5321441219449606194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188083 (f1 j) = 1) n)

end

end A188085.P5321441219449606194

namespace A188085

/-- `filter[n+1, A188083(#)]` -/
def P5321441219449606194.Spec : Prop :=
  ∀ n, (P5321441219449606194.a n : ℤ) = A188085 (n + 1)

end A188085

/-!
# A188086: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=3, [ ]=floor.

The programs for A188086, the canonical program `A188086.P10127461063612971264` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188086 has offset 1).

The definition of A188086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188086.P4661001154606776392

`char[3*comp[floor(n*sqrt(3))]-2*(n+1)-1]`
-/

namespace A188086.P4661001154606776392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (2 * (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188086.P4661001154606776392

namespace A188086

/-- `char[3*comp[floor(n*sqrt(3))]-2*(n+1)-1]` -/
def P4661001154606776392.Spec : Prop :=
  ∀ n, (P4661001154606776392.a n : ℤ) = A188086 (n + 1)

end A188086

/-! ## A188086.P902087145837475197

`A188083(A188083(n+1)+n+1)`
-/

namespace A188086.P902087145837475197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188083 (A188083 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188086.P902087145837475197

namespace A188086

/-- `A188083(A188083(n+1)+n+1)` -/
def P902087145837475197.Spec : Prop :=
  ∀ n, P902087145837475197.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P10127461063612971264

`Δ[A195120(n)-A195120(A195120(n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188086

/-- `Δ[A195120(n)-A195120(A195120(n))]` -/
def P10127461063612971264.Spec : Prop :=
  ∀ n, P10127461063612971264.a n = A188086 (n + 1)

theorem P10127461063612971264.correct : P10127461063612971264.Spec := by
  intro n
  simp only [A188086, Nat.add_sub_cancel]

end A188086

/-! ## A188086.P1038025112927809597

`A188071(A007538(n+2)+n+1)`
-/

namespace A188086.P1038025112927809597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188071 (A007538 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188086.P1038025112927809597

namespace A188086

/-- `A188071(A007538(n+2)+n+1)` -/
def P1038025112927809597.Spec : Prop :=
  ∀ n, P1038025112927809597.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P18216663963056657626

`A188082(n+3)*A275855(n+1)`
-/

namespace A188086.P18216663963056657626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188082 (n + 3) * A275855 (n + 1)

end

end A188086.P18216663963056657626

namespace A188086

/-- `A188082(n+3)*A275855(n+1)` -/
def P18216663963056657626.Spec : Prop :=
  ∀ n, P18216663963056657626.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P14260388986794564044

`A275855(A276865(n+2)+n+1)`
-/

namespace A188086.P14260388986794564044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (A276865 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188086.P14260388986794564044

namespace A188086

/-- `A275855(A276865(n+2)+n+1)` -/
def P14260388986794564044.Spec : Prop :=
  ∀ n, P14260388986794564044.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P6374517536842743942

`A275855(A007538(n+2)+n+2)`
-/

namespace A188086.P6374517536842743942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (A007538 (n + 2) + (n + 2 : ℤ)).toNat

end

end A188086.P6374517536842743942

namespace A188086

/-- `A275855(A007538(n+2)+n+2)` -/
def P6374517536842743942.Spec : Prop :=
  ∀ n, P6374517536842743942.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P992848097344295008

`A188093(2*(n+1))*A188093(n+1)`
-/

namespace A188086.P992848097344295008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188093 (2 * (n + 1)) * A188093 (n + 1)

end

end A188086.P992848097344295008

namespace A188086

/-- `A188093(2*(n+1))*A188093(n+1)` -/
def P992848097344295008.Spec : Prop :=
  ∀ n, P992848097344295008.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P7621628329786874534

`A144612(2*n+1)*A144612(A138466(n+2))`
-/

namespace A188086.P7621628329786874534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144612 (2 * n + 1) * A144612 (A138466 (n + 2)).toNat

end

end A188086.P7621628329786874534

namespace A188086

/-- `A144612(2*n+1)*A144612(A138466(n+2))` -/
def P7621628329786874534.Spec : Prop :=
  ∀ n, P7621628329786874534.a n = A188086 (n + 1)

end A188086

/-! ## A188086.P12873073845002903508

`A194667(∑[n]+3)`
-/

namespace A188086.P12873073845002903508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194667 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188086.P12873073845002903508

namespace A188086

/-- `A194667(∑[n]+3)` -/
def P12873073845002903508.Spec : Prop :=
  ∀ n, P12873073845002903508.a n = A188086 (n + 1)

end A188086

/-!
# A188087: Positions of 0 in A188086; complement of A188088.

The programs for A188087, the canonical program `A188087.P14776229008693783147` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188087 has offset 1).

The definition of A188087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188087.P4034270927064457096

`floor(∑[sqrt(gcd(3, n))])`
-/

namespace A188087.P4034270927064457096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.gcd 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188087.P4034270927064457096

namespace A188087

/-- `floor(∑[sqrt(gcd(3, n))])` -/
def P4034270927064457096.Spec : Prop :=
  ∀ n, P4034270927064457096.a n = A188087 (n + 1)

end A188087

/-! ## A188087.P15409275114349701021

`floor(∑[sqrt(2*char[3*n]+1)])`
-/

namespace A188087.P15409275114349701021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * (if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188087.P15409275114349701021

namespace A188087

/-- `floor(∑[sqrt(2*char[3*n]+1)])` -/
def P15409275114349701021.Spec : Prop :=
  ∀ n, P15409275114349701021.a n = A188087 (n + 1)

end A188087

/-! ## A188087.P14776229008693783147

`A215781(A008620(n))+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188087

/-- `A215781(A008620(n))+n` -/
def P14776229008693783147.Spec : Prop :=
  ∀ n, P14776229008693783147.a n = A188087 (n + 1)

theorem P14776229008693783147.correct : P14776229008693783147.Spec := by
  intro n
  simp only [A188087, Nat.add_sub_cancel]

end A188087

/-! ## A188087.P10823012524354937918

`A215781(A002264(n)+1)+n`
-/

namespace A188087.P10823012524354937918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A002264 n + 1).toNat + (n : ℤ)

end

end A188087.P10823012524354937918

namespace A188087

/-- `A215781(A002264(n)+1)+n` -/
def P10823012524354937918.Spec : Prop :=
  ∀ n, P10823012524354937918.a n = A188087 (n + 1)

end A188087

/-! ## A188087.P11514658039237093982

`comp[A188068(n+1)*A188069(n+1)]`
-/

namespace A188087.P11514658039237093982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) * A188069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188087.P11514658039237093982

namespace A188087

/-- `comp[A188068(n+1)*A188069(n+1)]` -/
def P11514658039237093982.Spec : Prop :=
  ∀ n, (P11514658039237093982.a n : ℤ) = A188087 (n + 1)

end A188087

/-! ## A188087.P15835640294012672137

`∪[A188084(n+1)-1, A188084(n+1)]`
-/

namespace A188087.P15835640294012672137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188087.P15835640294012672137

namespace A188087

/-- `∪[A188084(n+1)-1, A188084(n+1)]` -/
def P15835640294012672137.Spec : Prop :=
  ∀ n, (P15835640294012672137.a n : ℤ) = A188087 (n + 1)

end A188087

/-! ## A188087.P2978810799105127853

`∑[A080757(A002264(A088439(n)))]`
-/

namespace A188087.P2978810799105127853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A002264 (A088439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188087.P2978810799105127853

namespace A188087

/-- `∑[A080757(A002264(A088439(n)))]` -/
def P2978810799105127853.Spec : Prop :=
  ∀ n, P2978810799105127853.a n = A188087 (n + 1)

end A188087

/-! ## A188087.P391628668237204596

`∑[A080757(A142150(A004396(n)))]`
-/

namespace A188087.P391628668237204596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A142150 (A004396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188087.P391628668237204596

namespace A188087

/-- `∑[A080757(A142150(A004396(n)))]` -/
def P391628668237204596.Spec : Prop :=
  ∀ n, P391628668237204596.a n = A188087 (n + 1)

end A188087

/-! ## A188087.P6864318100550861713

`A215781(A103221(2*n))+n`
-/

namespace A188087.P6864318100550861713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A103221 (2 * n)).toNat + (n : ℤ)

end

end A188087.P6864318100550861713

namespace A188087

/-- `A215781(A103221(2*n))+n` -/
def P6864318100550861713.Spec : Prop :=
  ∀ n, P6864318100550861713.a n = A188087 (n + 1)

end A188087

/-!
# A188088: Positions of 1 in A188086; complement of A188087.

The programs for A188088, the canonical program `A188088.P12262049233856946859` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188088 has offset 1).

The definition of A188088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188088.P18180068062378922188

`3*comp[floor(n*sqrt(3))]-2*(n+1)`
-/

namespace A188088.P18180068062378922188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (2 * (n + 1) : ℤ)

end

end A188088.P18180068062378922188

namespace A188088

/-- `3*comp[floor(n*sqrt(3))]-2*(n+1)` -/
def P18180068062378922188.Spec : Prop :=
  ∀ n, P18180068062378922188.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P12262049233856946859

`abs(3-A188074(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188088

/-- `abs(3-A188074(n+1))` -/
def P12262049233856946859.Spec : Prop :=
  ∀ n, P12262049233856946859.a n = A188088 (n + 1)

theorem P12262049233856946859.correct : P12262049233856946859.Spec := by
  intro n
  simp only [A188088, Nat.add_sub_cancel]

end A188088

/-! ## A188088.P16983864405841657562

`A188069(A188070(n+1))`
-/

namespace A188088.P16983864405841657562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A188070 (n + 1)).toNat

end

end A188088.P16983864405841657562

namespace A188088

/-- `A188069(A188070(n+1))` -/
def P16983864405841657562.Spec : Prop :=
  ∀ n, P16983864405841657562.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P11598893268616415838

`A188069(A054406(n+1)-n)`
-/

namespace A188088.P11598893268616415838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A054406 (n + 1) - (n : ℤ)).toNat

end

end A188088.P11598893268616415838

namespace A188088

/-- `A188069(A054406(n+1)-n)` -/
def P11598893268616415838.Spec : Prop :=
  ∀ n, P11598893268616415838.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P2906097964604266768

`A188069(A026255(A022838(n+1))-n)`
-/

namespace A188088.P2906097964604266768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A026255 (A022838 (n + 1)).toNat - (n : ℤ)).toNat

end

end A188088.P2906097964604266768

namespace A188088

/-- `A188069(A026255(A022838(n+1))-n)` -/
def P2906097964604266768.Spec : Prop :=
  ∀ n, P2906097964604266768.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P895405906203040315

`A188095(2*(n+1))`
-/

namespace A188088.P895405906203040315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188095 (2 * (n + 1))

end

end A188088.P895405906203040315

namespace A188088

/-- `A188095(2*(n+1))` -/
def P895405906203040315.Spec : Prop :=
  ∀ n, P895405906203040315.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P2756847747194891507

`A188085(A054406(n+1))`
-/

namespace A188088.P2756847747194891507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (A054406 (n + 1)).toNat

end

end A188088.P2756847747194891507

namespace A188088

/-- `A188085(A054406(n+1))` -/
def P2756847747194891507.Spec : Prop :=
  ∀ n, P2756847747194891507.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P13354724173698696854

`∩[A188085(n+1)-1, A188085(n+1)]`
-/

namespace A188088.P13354724173698696854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188088.P13354724173698696854

namespace A188088

/-- `∩[A188085(n+1)-1, A188085(n+1)]` -/
def P13354724173698696854.Spec : Prop :=
  ∀ n, (P13354724173698696854.a n : ℤ) = A188088 (n + 1)

end A188088

/-! ## A188088.P17260100699158154430

`∩[A327181(n+1)-2, A327210(n+1)]`
-/

namespace A188088.P17260100699158154430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188088.P17260100699158154430

namespace A188088

/-- `∩[A327181(n+1)-2, A327210(n+1)]` -/
def P17260100699158154430.Spec : Prop :=
  ∀ n, (P17260100699158154430.a n : ℤ) = A188088 (n + 1)

end A188088

/-! ## A188088.P10285467401511622189

`A188072(2*A188070(n+1)-1)`
-/

namespace A188088.P10285467401511622189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (2 * A188070 (n + 1) - 1).toNat

end

end A188088.P10285467401511622189

namespace A188088

/-- `A188072(2*A188070(n+1)-1)` -/
def P10285467401511622189.Spec : Prop :=
  ∀ n, P10285467401511622189.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P6346030903562842725

`∩[A188084(2*n+1)-2, A327210(n+2)]`
-/

namespace A188088.P6346030903562842725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188088.P6346030903562842725

namespace A188088

/-- `∩[A188084(2*n+1)-2, A327210(n+2)]` -/
def P6346030903562842725.Spec : Prop :=
  ∀ n, (P6346030903562842725.a n : ℤ) = A188088 (n + 1)

end A188088

/-! ## A188088.P17864405452831962170

`A188072(A188070(n+1)+A188070(n+1)-1)`
-/

namespace A188088.P17864405452831962170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (A188070 (n + 1) + (A188070 (n + 1) - 1)).toNat

end

end A188088.P17864405452831962170

namespace A188088

/-- `A188072(A188070(n+1)+A188070(n+1)-1)` -/
def P17864405452831962170.Spec : Prop :=
  ∀ n, P17864405452831962170.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P14720245299244227833

`A003511(A054406(n+1)+A003511(n+1))`
-/

namespace A188088.P14720245299244227833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A054406 (n + 1) + A003511 (n + 1)).toNat

end

end A188088.P14720245299244227833

namespace A188088

/-- `A003511(A054406(n+1)+A003511(n+1))` -/
def P14720245299244227833.Spec : Prop :=
  ∀ n, P14720245299244227833.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P8763709052372259896

`A003511(A186539(A003511(n+1)+n+1))`
-/

namespace A188088.P8763709052372259896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A186539 (A003511 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A188088.P8763709052372259896

namespace A188088

/-- `A003511(A186539(A003511(n+1)+n+1))` -/
def P8763709052372259896.Spec : Prop :=
  ∀ n, P8763709052372259896.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P17106119571621897642

`filter[n+1, A188086(#)]`
-/

namespace A188088.P17106119571621897642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188086 (f1 j) = 1) n)

end

end A188088.P17106119571621897642

namespace A188088

/-- `filter[n+1, A188086(#)]` -/
def P17106119571621897642.Spec : Prop :=
  ∀ n, (P17106119571621897642.a n : ℤ) = A188088 (n + 1)

end A188088

/-! ## A188088.P11083944119892131829

`A023445(A188074(n+1))`
-/

namespace A188088.P11083944119892131829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A188074 (n + 1)).toNat

end

end A188088.P11083944119892131829

namespace A188088

/-- `A023445(A188074(n+1))` -/
def P11083944119892131829.Spec : Prop :=
  ∀ n, P11083944119892131829.a n = A188088 (n + 1)

end A188088

/-! ## A188088.P6811878306977590784

`lt[A327208(n+1), A327180(n)]`
-/

namespace A188088.P6811878306977590784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188088.P6811878306977590784

namespace A188088

/-- `lt[A327208(n+1), A327180(n)]` -/
def P6811878306977590784.Spec : Prop :=
  ∀ n, (P6811878306977590784.a n : ℤ) = A188088 (n + 1)

end A188088

/-! ## A188088.P3232151580442702066

`A023443(A188081(2*(n+1))-2)`
-/

namespace A188088.P3232151580442702066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188081 (2 * (n + 1)) - 2).toNat

end

end A188088.P3232151580442702066

namespace A188088

/-- `A023443(A188081(2*(n+1))-2)` -/
def P3232151580442702066.Spec : Prop :=
  ∀ n, P3232151580442702066.a n = A188088 (n + 1)

end A188088

/-!
# A188089: Positions of 0 in the zero-one sequence [nr+4r]-[nr]-[4r], where r=sqrt(3), n>=1.

The programs for A188089, the canonical program `A188089.P18310189432462336947` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188089 has offset 1).

The definition of A188089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188089.P17103654423758478959

`∑[or(11, A276865(n+1))]`
-/

namespace A188089.P17103654423758478959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 11 (A276865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188089.P17103654423758478959

namespace A188089

/-- `∑[or(11, A276865(n+1))]` -/
def P17103654423758478959.Spec : Prop :=
  ∀ n, P17103654423758478959.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P18310189432462336947

`4*A003512(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188089

/-- `4*A003512(n+1)-(n+1)` -/
def P18310189432462336947.Spec : Prop :=
  ∀ n, P18310189432462336947.a n = A188089 (n + 1)

theorem P18310189432462336947.correct : P18310189432462336947.Spec := by
  intro n
  simp only [A188089, Nat.add_sub_cancel]

end A188089

/-! ## A188089.P12990892214610764079

`A188075(n+2)-4`
-/

namespace A188089.P12990892214610764079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188075 (n + 2) - 4

end

end A188089.P12990892214610764079

namespace A188089

/-- `A188075(n+2)-4` -/
def P12990892214610764079.Spec : Prop :=
  ∀ n, P12990892214610764079.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P8897227112387918812

`∑[abs(Δ[A188075(n+1)])]`
-/

namespace A188089.P8897227112387918812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188089.P8897227112387918812

namespace A188089

/-- `∑[abs(Δ[A188075(n+1)])]` -/
def P8897227112387918812.Spec : Prop :=
  ∀ n, P8897227112387918812.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P12526501581850215593

`A188074(A054088(n+1))`
-/

namespace A188089.P12526501581850215593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (A054088 (n + 1)).toNat

end

end A188089.P12526501581850215593

namespace A188089

/-- `A188074(A054088(n+1))` -/
def P12526501581850215593.Spec : Prop :=
  ∀ n, P12526501581850215593.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P3381567071396323496

`A188074(∑[A007538(n+1)])`
-/

namespace A188089.P3381567071396323496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188089.P3381567071396323496

namespace A188089

/-- `A188074(∑[A007538(n+1)])` -/
def P3381567071396323496.Spec : Prop :=
  ∀ n, P3381567071396323496.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P18381094271799445861

`A188074(A188070(2*(n+1))-1)`
-/

namespace A188089.P18381094271799445861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (A188070 (2 * (n + 1)) - 1).toNat

end

end A188089.P18381094271799445861

namespace A188089

/-- `A188074(A188070(2*(n+1))-1)` -/
def P18381094271799445861.Spec : Prop :=
  ∀ n, P18381094271799445861.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P5790797315713523936

`A188074(A022838(n+1)+1+n)`
-/

namespace A188089.P5790797315713523936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (A022838 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188089.P5790797315713523936

namespace A188089

/-- `A188074(A022838(n+1)+1+n)` -/
def P5790797315713523936.Spec : Prop :=
  ∀ n, P5790797315713523936.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P4177901688444941276

`A188074(A215781(n+1)+2*n+1)`
-/

namespace A188089.P4177901688444941276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188074 (A215781 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A188089.P4177901688444941276

namespace A188089

/-- `A188074(A215781(n+1)+2*n+1)` -/
def P4177901688444941276.Spec : Prop :=
  ∀ n, P4177901688444941276.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P18011858169969933679

`A182778(A003511(2*(n+1)))+n+2`
-/

namespace A188089.P18011858169969933679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (A003511 (2 * (n + 1))).toNat + (n + 2 : ℤ)

end

end A188089.P18011858169969933679

namespace A188089

/-- `A182778(A003511(2*(n+1)))+n+2` -/
def P18011858169969933679.Spec : Prop :=
  ∀ n, P18011858169969933679.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P16454266867937109767

`A180123(A180123(n+1))+5`
-/

namespace A188089.P16454266867937109767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (A180123 (n + 1)).toNat + 5

end

end A188089.P16454266867937109767

namespace A188089

/-- `A180123(A180123(n+1))+5` -/
def P16454266867937109767.Spec : Prop :=
  ∀ n, P16454266867937109767.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P16431598626182883952

`A080590(ceil((sqrt(3)+2)*(n+1))-1)+2`
-/

namespace A188089.P16431598626182883952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (⌈(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌉ - 1).toNat + 2

end

end A188089.P16431598626182883952

namespace A188089

/-- `A080590(ceil((sqrt(3)+2)*(n+1))-1)+2` -/
def P16431598626182883952.Spec : Prop :=
  ∀ n, P16431598626182883952.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P808801458053629706

`A003512(A003512(n+1))`
-/

namespace A188089.P808801458053629706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A003512 (n + 1)).toNat

end

end A188089.P808801458053629706

namespace A188089

/-- `A003512(A003512(n+1))` -/
def P808801458053629706.Spec : Prop :=
  ∀ n, P808801458053629706.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P1460511860214580807

`A081840(A188069(n+2))`
-/

namespace A188089.P1460511860214580807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081840 (A188069 (n + 2)).toNat

end

end A188089.P1460511860214580807

namespace A188089

/-- `A081840(A188069(n+2))` -/
def P1460511860214580807.Spec : Prop :=
  ∀ n, P1460511860214580807.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P38720722620026341

`A081840(A080590(n+2)-1)`
-/

namespace A188089.P38720722620026341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081840 (A080590 (n + 2) - 1).toNat

end

end A188089.P38720722620026341

namespace A188089

/-- `A081840(A080590(n+2)-1)` -/
def P38720722620026341.Spec : Prop :=
  ∀ n, P38720722620026341.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P8615175675917937281

`A004767(A054088(n+1)+n)-n`
-/

namespace A188089.P8615175675917937281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A054088 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A188089.P8615175675917937281

namespace A188089

/-- `A004767(A054088(n+1)+n)-n` -/
def P8615175675917937281.Spec : Prop :=
  ∀ n, P8615175675917937281.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P7655944679886124937

`A188069(A188069(n+2))-A000035(2*n+1)`
-/

namespace A188089.P7655944679886124937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (A188069 (n + 2)).toNat - A000035 (2 * n + 1)

end

end A188089.P7655944679886124937

namespace A188089

/-- `A188069(A188069(n+2))-A000035(2*n+1)` -/
def P7655944679886124937.Spec : Prop :=
  ∀ n, P7655944679886124937.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P5690140143544777407

`A008587(A182778(n+1)-(n+1))-A182778(n+1)`
-/

namespace A188089.P5690140143544777407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A182778 (n + 1) - (n + 1 : ℤ)).toNat - A182778 (n + 1)

end

end A188089.P5690140143544777407

namespace A188089

/-- `A008587(A182778(n+1)-(n+1))-A182778(n+1)` -/
def P5690140143544777407.Spec : Prop :=
  ∀ n, P5690140143544777407.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P11111847704670271974

`A188091(A182778(n+1))`
-/

namespace A188089.P11111847704670271974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (A182778 (n + 1)).toNat

end

end A188089.P11111847704670271974

namespace A188089

/-- `A188091(A182778(n+1))` -/
def P11111847704670271974.Spec : Prop :=
  ∀ n, P11111847704670271974.a n = A188089 (n + 1)

end A188089

/-! ## A188089.P5610650014876428744

`A188091(A188084(2*n+1)+n+2)`
-/

namespace A188089.P5610650014876428744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (A188084 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A188089.P5610650014876428744

namespace A188089

/-- `A188091(A188084(2*n+1)+n+2)` -/
def P5610650014876428744.Spec : Prop :=
  ∀ n, P5610650014876428744.a n = A188089 (n + 1)

end A188089

/-!
# A188090: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=5, [ ]=floor.

The programs for A188090, the canonical program `A188090.P33254598537910454` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188090 has offset 1).

The definition of A188090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188090.P10626741532480072529

`char[A188092(n+1)-1]`
-/

namespace A188090.P10626741532480072529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188090.P10626741532480072529

namespace A188090

/-- `char[A188092(n+1)-1]` -/
def P10626741532480072529.Spec : Prop :=
  ∀ n, (P10626741532480072529.a n : ℤ) = A188090 (n + 1)

end A188090

/-! ## A188090.P3147197455260337793

`A188093(1-a(n-1)+n)` with `a(0)=1`
-/

namespace A188090.P3147197455260337793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188093 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A188090.P3147197455260337793

namespace A188090

/-- `A188093(1-a(n-1)+n)` -/
def P3147197455260337793.Spec : Prop :=
  ∀ n, P3147197455260337793.a n = A188090 (n + 1)

end A188090

/-! ## A188090.P14516882421271165183

`A188093(A188093(n+1)+n)`
-/

namespace A188090.P14516882421271165183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188093 (A188093 (n + 1) + (n : ℤ)).toNat

end

end A188090.P14516882421271165183

namespace A188090

/-- `A188093(A188093(n+1)+n)` -/
def P14516882421271165183.Spec : Prop :=
  ∀ n, P14516882421271165183.a n = A188090 (n + 1)

end A188090

/-! ## A188090.P33254598537910454

`A188082(n+1)*A188082(n+5)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188090

/-- `A188082(n+1)*A188082(n+5)` -/
def P33254598537910454.Spec : Prop :=
  ∀ n, P33254598537910454.a n = A188090 (n + 1)

theorem P33254598537910454.correct : P33254598537910454.Spec := by
  intro n
  simp only [A188090, Nat.add_sub_cancel]

end A188090

/-! ## A188090.P14923308749368948705

`A188076(n+6)`
-/

namespace A188090.P14923308749368948705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (n + 6)

end

end A188090.P14923308749368948705

namespace A188090

/-- `A188076(n+6)` -/
def P14923308749368948705.Spec : Prop :=
  ∀ n, P14923308749368948705.a n = A188090 (n + 1)

end A188090

/-! ## A188090.P14205151611536481778

`A011655(A056525(2*n+1)+1)`
-/

namespace A188090.P14205151611536481778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A056525 (2 * n + 1) + 1).toNat

end

end A188090.P14205151611536481778

namespace A188090

/-- `A011655(A056525(2*n+1)+1)` -/
def P14205151611536481778.Spec : Prop :=
  ∀ n, P14205151611536481778.a n = A188090 (n + 1)

end A188090

/-! ## A188090.P2945485997312537425

`(A255574(A156230(2*n+1))+1)%2`
-/

namespace A188090.P2945485997312537425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255574 (A156230 (2 * n + 1)).toNat + 1) 2

end

end A188090.P2945485997312537425

namespace A188090

/-- `(A255574(A156230(2*n+1))+1)%2` -/
def P2945485997312537425.Spec : Prop :=
  ∀ n, P2945485997312537425.a n = A188090 (n + 1)

end A188090

/-! ## A188090.P7892586482288436678

`A190683(floor((sqrt(3)+2)*(n+1)))^A190482(n+1)`
-/

namespace A188090.P7892586482288436678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190683 ⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋.toNat : ℚ) ^ (A190482 (n + 1) : ℤ)

end

end A188090.P7892586482288436678

namespace A188090

/-- `A190683(floor((sqrt(3)+2)*(n+1)))^A190482(n+1)` -/
def P7892586482288436678.Spec : Prop :=
  ∀ n, P7892586482288436678.a n = (A188090 (n + 1) : ℚ)

end A188090

/-!
# A188091: Positions of 0 in A188090; complement of A188092.

The programs for A188091, the canonical program `A188091.P13272439363286867468` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188091 has offset 1).

The definition of A188091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188091.P13272439363286867468

`A188077(n+4)-5`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A188091

/-- `A188077(n+4)-5` -/
def P13272439363286867468.Spec : Prop :=
  ∀ n, P13272439363286867468.a n = A188091 (n + 1)

theorem P13272439363286867468.correct : P13272439363286867468.Spec := by
  intro n
  simp only [A188091, Nat.add_sub_cancel]

end A188091

/-! ## A188091.P6911789563498472741

`∑[abs(Δ[A188077(n+3)])]`
-/

namespace A188091.P6911789563498472741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P6911789563498472741

namespace A188091

/-- `∑[abs(Δ[A188077(n+3)])]` -/
def P6911789563498472741.Spec : Prop :=
  ∀ n, P6911789563498472741.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P1646383204101356342

`∑[A000027(Δ[A188077(n+3)])]`
-/

namespace A188091.P1646383204101356342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P1646383204101356342

namespace A188091

/-- `∑[A000027(Δ[A188077(n+3)])]` -/
def P1646383204101356342.Spec : Prop :=
  ∀ n, P1646383204101356342.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P14769791552264331268

`∑[A000961(Δ[A188077(n+3)])]`
-/

namespace A188091.P14769791552264331268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P14769791552264331268

namespace A188091

/-- `∑[A000961(Δ[A188077(n+3)])]` -/
def P14769791552264331268.Spec : Prop :=
  ∀ n, P14769791552264331268.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P2928427409407071331

`∑[A001935(Δ[A188077(n+3)])]`
-/

namespace A188091.P2928427409407071331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P2928427409407071331

namespace A188091

/-- `∑[A001935(Δ[A188077(n+3)])]` -/
def P2928427409407071331.Spec : Prop :=
  ∀ n, P2928427409407071331.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P1212011966994253693

`∑[A004278(Δ[A188077(n+3)])]`
-/

namespace A188091.P1212011966994253693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P1212011966994253693

namespace A188091

/-- `∑[A004278(Δ[A188077(n+3)])]` -/
def P1212011966994253693.Spec : Prop :=
  ∀ n, P1212011966994253693.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P10763335385274451269

`∑[A005349(Δ[A188077(n+3)])]`
-/

namespace A188091.P10763335385274451269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P10763335385274451269

namespace A188091

/-- `∑[A005349(Δ[A188077(n+3)])]` -/
def P10763335385274451269.Spec : Prop :=
  ∀ n, P10763335385274451269.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P10489477031706542734

`∑[A005941(Δ[A188077(n+3)])]`
-/

namespace A188091.P10489477031706542734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188077 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188091.P10489477031706542734

namespace A188091

/-- `∑[A005941(Δ[A188077(n+3)])]` -/
def P10489477031706542734.Spec : Prop :=
  ∀ n, P10489477031706542734.a n = A188091 (n + 1)

end A188091

/-! ## A188091.P14318269300997789325

`∩[A188094(n+1)+1, A188094(n+1)]`
-/

namespace A188091.P14318269300997789325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188094 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188091.P14318269300997789325

namespace A188091

/-- `∩[A188094(n+1)+1, A188094(n+1)]` -/
def P14318269300997789325.Spec : Prop :=
  ∀ n, (P14318269300997789325.a n : ℤ) = A188091 (n + 1)

end A188091

/-! ## A188091.P11061514229551260277

`eq[1, A188090(A233583(n+1))+1]`
-/

namespace A188091.P11061514229551260277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A233583 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188091.P11061514229551260277

namespace A188091

/-- `eq[1, A188090(A233583(n+1))+1]` -/
def P11061514229551260277.Spec : Prop :=
  ∀ n, (P11061514229551260277.a n : ℤ) = A188091 (n + 1)

end A188091

/-!
# A188092: Positions of 1 in A188090; complement of A188091.

The programs for A188092, the canonical program `A188092.P4661971966666543526` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188092 has offset 1).

The definition of A188092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188092.P7853459684228097637

`∪[A188095(n+1)+1, A188095(n+1)]`
-/

namespace A188092.P7853459684228097637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188095 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188092.P7853459684228097637

namespace A188092

/-- `∪[A188095(n+1)+1, A188095(n+1)]` -/
def P7853459684228097637.Spec : Prop :=
  ∀ n, (P7853459684228097637.a n : ℤ) = A188092 (n + 1)

end A188092

/-! ## A188092.P5511721666516196798

`A188078(n+3)-5`
-/

namespace A188092.P5511721666516196798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 3) - 5

end

end A188092.P5511721666516196798

namespace A188092

/-- `A188078(n+3)-5` -/
def P5511721666516196798.Spec : Prop :=
  ∀ n, P5511721666516196798.a n = A188092 (n + 1)

end A188092

/-! ## A188092.P4661971966666543526

`filter[n+1, A188090(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188092

/-- `filter[n+1, A188090(#)]` -/
def P4661971966666543526.Spec : Prop :=
  ∀ n, (P4661971966666543526.a n : ℤ) = A188092 (n + 1)

theorem P4661971966666543526.correct : P4661971966666543526.Spec := by
  intro n
  simp only [A188092, Nat.add_sub_cancel]

end A188092

/-! ## A188092.P12638543891542304406

`record[(n+1)*A188090(n+1)]`
-/

namespace A188092.P12638543891542304406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188092.P12638543891542304406

namespace A188092

/-- `record[(n+1)*A188090(n+1)]` -/
def P12638543891542304406.Spec : Prop :=
  ∀ n, P12638543891542304406.a n = A188092 (n + 1)

end A188092

/-! ## A188092.P13524167242886594007

`eq[A054977(n), A188090(A233583(n+1))]`
-/

namespace A188092.P13524167242886594007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188092.P13524167242886594007

namespace A188092

/-- `eq[A054977(n), A188090(A233583(n+1))]` -/
def P13524167242886594007.Spec : Prop :=
  ∀ n, (P13524167242886594007.a n : ℤ) = A188092 (n + 1)

end A188092

/-! ## A188092.P13925352088449964029

`eq[A057427(n), A188090(A233583(n+1))]`
-/

namespace A188092.P13925352088449964029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188092.P13925352088449964029

namespace A188092

/-- `eq[A057427(n), A188090(A233583(n+1))]` -/
def P13925352088449964029.Spec : Prop :=
  ∀ n, (P13925352088449964029.a n : ℤ) = A188092 (n + 1)

end A188092

/-! ## A188092.P10450401665436466360

`eq[-A188090(A233583(n+1)), A057428(n)]`
-/

namespace A188092.P10450401665436466360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188090 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188092.P10450401665436466360

namespace A188092

/-- `eq[-A188090(A233583(n+1)), A057428(n)]` -/
def P10450401665436466360.Spec : Prop :=
  ∀ n, (P10450401665436466360.a n : ℤ) = A188092 (n + 1)

end A188092

/-! ## A188092.P6840267998014035460

`eq[A019431(2*n), A188090(A233583(n+1))]`
-/

namespace A188092.P6840267998014035460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188092.P6840267998014035460

namespace A188092

/-- `eq[A019431(2*n), A188090(A233583(n+1))]` -/
def P6840267998014035460.Spec : Prop :=
  ∀ n, (P6840267998014035460.a n : ℤ) = A188092 (n + 1)

end A188092

/-!
# A188093: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=6, [ ]=floor.

The programs for A188093, the canonical program `A188093.P14427247559921833927` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188093 has offset 1).

The definition of A188093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188093.P4520622811995340993

`char[A188081(n+1)-7]`
-/

namespace A188093.P4520622811995340993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188093.P4520622811995340993

namespace A188093

/-- `char[A188081(n+1)-7]` -/
def P4520622811995340993.Spec : Prop :=
  ∀ n, (P4520622811995340993.a n : ℤ) = A188093 (n + 1)

end A188093

/-! ## A188093.P14427247559921833927

`A188090(a(n-1)+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188093

/-- `A188090(a(n-1)+n+1)` -/
def P14427247559921833927.Spec : Prop :=
  ∀ n, P14427247559921833927.a n = A188093 (n + 1)

theorem P14427247559921833927.correct : P14427247559921833927.Spec := by
  intro n
  simp only [A188093, Nat.add_sub_cancel]

end A188093

/-! ## A188093.P10908637554035968148

`A188090(A188090(n+1)+n+1)`
-/

namespace A188093.P10908637554035968148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A188090 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188093.P10908637554035968148

namespace A188093

/-- `A188090(A188090(n+1)+n+1)` -/
def P10908637554035968148.Spec : Prop :=
  ∀ n, P10908637554035968148.a n = A188093 (n + 1)

end A188093

/-! ## A188093.P10820567705968050292

`A188086(n+1)+A188086(n+4)`
-/

namespace A188093.P10820567705968050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188086 (n + 1) + A188086 (n + 4)

end

end A188093.P10820567705968050292

namespace A188093

/-- `A188086(n+1)+A188086(n+4)` -/
def P10820567705968050292.Spec : Prop :=
  ∀ n, P10820567705968050292.a n = A188093 (n + 1)

end A188093

/-! ## A188093.P4220326774245215946

`A188079(n+7)`
-/

namespace A188093.P4220326774245215946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188079 (n + 7)

end

end A188093.P4220326774245215946

namespace A188093

/-- `A188079(n+7)` -/
def P4220326774245215946.Spec : Prop :=
  ∀ n, P4220326774245215946.a n = A188093 (n + 1)

end A188093

/-! ## A188093.P4951842428523123771

`A127001(A374007(n+1))`
-/

namespace A188093.P4951842428523123771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127001 (A374007 (n + 1)).toNat

end

end A188093.P4951842428523123771

namespace A188093

/-- `A127001(A374007(n+1))` -/
def P4951842428523123771.Spec : Prop :=
  ∀ n, P4951842428523123771.a n = A188093 (n + 1)

end A188093

/-!
# A188094: Positions of 0 in A188093; complement of A188095.

The programs for A188094, the canonical program `A188094.P8623262597786737526` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188094 has offset 1).

The definition of A188094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188094.P3541759424176705084

`∪[A188091(n+1)-1, A188091(n+1)]`
-/

namespace A188094.P3541759424176705084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188094.P3541759424176705084

namespace A188094

/-- `∪[A188091(n+1)-1, A188091(n+1)]` -/
def P3541759424176705084.Spec : Prop :=
  ∀ n, (P3541759424176705084.a n : ℤ) = A188094 (n + 1)

end A188094

/-! ## A188094.P8623262597786737526

`A188080(n+6)-6`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A188094

/-- `A188080(n+6)-6` -/
def P8623262597786737526.Spec : Prop :=
  ∀ n, P8623262597786737526.a n = A188094 (n + 1)

theorem P8623262597786737526.correct : P8623262597786737526.Spec := by
  intro n
  simp only [A188094, Nat.add_sub_cancel]

end A188094

/-! ## A188094.P9211483124976298281

`∑[abs(Δ[A188080(n+5)])]`
-/

namespace A188094.P9211483124976298281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P9211483124976298281

namespace A188094

/-- `∑[abs(Δ[A188080(n+5)])]` -/
def P9211483124976298281.Spec : Prop :=
  ∀ n, P9211483124976298281.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P6004582413503293462

`∑[A000041(Δ[A188080(n+5)])]`
-/

namespace A188094.P6004582413503293462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P6004582413503293462

namespace A188094

/-- `∑[A000041(Δ[A188080(n+5)])]` -/
def P6004582413503293462.Spec : Prop :=
  ∀ n, P6004582413503293462.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P15372336239979714534

`∑[A005117(Δ[A188080(n+5)])]`
-/

namespace A188094.P15372336239979714534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P15372336239979714534

namespace A188094

/-- `∑[A005117(Δ[A188080(n+5)])]` -/
def P15372336239979714534.Spec : Prop :=
  ∀ n, P15372336239979714534.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P8145456720664248708

`∑[A006530(Δ[A188080(n+5)])]`
-/

namespace A188094.P8145456720664248708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P8145456720664248708

namespace A188094

/-- `∑[A006530(Δ[A188080(n+5)])]` -/
def P8145456720664248708.Spec : Prop :=
  ∀ n, P8145456720664248708.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P11860206354264664866

`∑[A014963(Δ[A188080(n+5)])]`
-/

namespace A188094.P11860206354264664866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P11860206354264664866

namespace A188094

/-- `∑[A014963(Δ[A188080(n+5)])]` -/
def P11860206354264664866.Spec : Prop :=
  ∀ n, P11860206354264664866.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P6031777733993328665

`∑[A020639(Δ[A188080(n+5)])]`
-/

namespace A188094.P6031777733993328665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P6031777733993328665

namespace A188094

/-- `∑[A020639(Δ[A188080(n+5)])]` -/
def P6031777733993328665.Spec : Prop :=
  ∀ n, P6031777733993328665.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P14185290345503896072

`∑[A213921(Δ[A188080(n+5)])]`
-/

namespace A188094.P14185290345503896072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213921 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P14185290345503896072

namespace A188094

/-- `∑[A213921(Δ[A188080(n+5)])]` -/
def P14185290345503896072.Spec : Prop :=
  ∀ n, P14185290345503896072.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P4794281609835744028

`∑[Δ[A188080(n+5)]%A017341(n)]`
-/

namespace A188094.P4794281609835744028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017341 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188094.P4794281609835744028

namespace A188094

/-- `∑[Δ[A188080(n+5)]%A017341(n)]` -/
def P4794281609835744028.Spec : Prop :=
  ∀ n, P4794281609835744028.a n = A188094 (n + 1)

end A188094

/-! ## A188094.P3806384744820261844

`Δ[A188080(n+5)]+a(-A024000(n))` with `a(0)=2`
-/

namespace A188094.P3806384744820261844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + a (-A024000 n).toNat

end

end A188094.P3806384744820261844

namespace A188094

/-- `Δ[A188080(n+5)]+a(-A024000(n))` -/
def P3806384744820261844.Spec : Prop :=
  ∀ n, P3806384744820261844.a n = A188094 (n + 1)

end A188094

/-!
# A188095: Positions of 1 in A188093; complement of A188094.

The programs for A188095, the canonical program `A188095.P11723710385775795557` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188095 has offset 1).

The definition of A188095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188095.P4411735163267871096

`A188081(n+2)-6`
-/

namespace A188095.P4411735163267871096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 2) - 6

end

end A188095.P4411735163267871096

namespace A188095

/-- `A188081(n+2)-6` -/
def P4411735163267871096.Spec : Prop :=
  ∀ n, P4411735163267871096.a n = A188095 (n + 1)

end A188095

/-! ## A188095.P728468291704563059

`∑[Δ[A188081(n+1)]%(n+3)]`
-/

namespace A188095.P728468291704563059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188095.P728468291704563059

namespace A188095

/-- `∑[Δ[A188081(n+1)]%(n+3)]` -/
def P728468291704563059.Spec : Prop :=
  ∀ n, P728468291704563059.a n = A188095 (n + 1)

end A188095

/-! ## A188095.P4936139252604794267

`∑[A188081(n+2)%A188081(n+1)]`
-/

namespace A188095.P4936139252604794267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188081 (n + 2)) (A188081 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188095.P4936139252604794267

namespace A188095

/-- `∑[A188081(n+2)%A188081(n+1)]` -/
def P4936139252604794267.Spec : Prop :=
  ∀ n, P4936139252604794267.a n = A188095 (n + 1)

end A188095

/-! ## A188095.P11723710385775795557

`∩[A188092(n+1)-1, A188092(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A188095

/-- `∩[A188092(n+1)-1, A188092(n+1)]` -/
def P11723710385775795557.Spec : Prop :=
  ∀ n, (P11723710385775795557.a n : ℤ) = A188095 (n + 1)

theorem P11723710385775795557.correct : P11723710385775795557.Spec := by
  intro n
  simp only [A188095, Nat.add_sub_cancel]

end A188095

/-! ## A188095.P850185139036495949

`filter[n+1, A188093(#)]`
-/

namespace A188095.P850185139036495949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188093 (f1 j) = 1) n)

end

end A188095.P850185139036495949

namespace A188095

/-- `filter[n+1, A188093(#)]` -/
def P850185139036495949.Spec : Prop :=
  ∀ n, (P850185139036495949.a n : ℤ) = A188095 (n + 1)

end A188095

/-! ## A188095.P851322175103552348

`record[(n+1)*A188093(n+1)]`
-/

namespace A188095.P851322175103552348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188095.P851322175103552348

namespace A188095

/-- `record[(n+1)*A188093(n+1)]` -/
def P851322175103552348.Spec : Prop :=
  ∀ n, P851322175103552348.a n = A188095 (n + 1)

end A188095

/-! ## A188095.P14006451060794681793

`A023448(A188081(n+2))`
-/

namespace A188095.P14006451060794681793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A188081 (n + 2)).toNat

end

end A188095.P14006451060794681793

namespace A188095

/-- `A023448(A188081(n+2))` -/
def P14006451060794681793.Spec : Prop :=
  ∀ n, P14006451060794681793.a n = A188095 (n + 1)

end A188095

/-!
# A188096: Number of (n+3)X(n+3) binary arrays with every 4X4 subblock commuting with each horizontal and vertical neighbor 4X4 subblock.

The programs for A188096, there is no canonical definition to state claims against.
-/

/-! ## A188096.P17077334226039444145

`A188105(∑[4*n]+1)`
-/

namespace A188096.P17077334226039444145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188096.P17077334226039444145

/-! ## A188096.P1307647486821831784

`or(char[1], A188105(A001844(n)))`
-/

namespace A188096.P1307647486821831784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A001844 n).toNat)

end

end A188096.P1307647486821831784

/-! ## A188096.P7410973100691073301

`A188105(A001844(n))-A045698(∑[n])`
-/

namespace A188096.P7410973100691073301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A001844 n).toNat - A045698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188096.P7410973100691073301

/-! ## A188096.P1025403418459560511

`A007318(∑[n])*A188105(A001844(n))`
-/

namespace A188096.P1025403418459560511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A188105 (A001844 n).toNat

end

end A188096.P1025403418459560511

/-! ## A188096.P17595024896902635886

`A188105(A001844(n))+A000007(n+1)`
-/

namespace A188096.P17595024896902635886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A001844 n).toNat + A000007 (n + 1)

end

end A188096.P17595024896902635886

/-!
# A188097: Number of (n+3) X 4 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188097, there is no canonical definition to state claims against.
-/

/-! ## A188097.P14636584470355033483

`A188105(∑[n]+1)`
-/

namespace A188097.P14636584470355033483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188097.P14636584470355033483

/-! ## A188097.P4876012183781602744

`or(char[2], A188105(A000124(n)))`
-/

namespace A188097.P4876012183781602744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A000124 n).toNat)

end

end A188097.P4876012183781602744

/-! ## A188097.P5562240538828047702

`or(char[2], A188105(A000217(n)+1))`
-/

namespace A188097.P5562240538828047702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A000217 n + 1).toNat)

end

end A188097.P5562240538828047702

/-! ## A188097.P16656305173306886316

`lcm(A087960(n), A188105(A000124(n)))`
-/

namespace A188097.P16656305173306886316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A188105 (A000124 n).toNat)

end

end A188097.P16656305173306886316

/-! ## A188097.P6697490786608798765

`char[A091202(n)]*A188105(A000124(n))`
-/

namespace A188097.P6697490786608798765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A000124 n).toNat

end

end A188097.P6697490786608798765

/-! ## A188097.P18331444142869830035

`char[A127381(n)]*A188105(A000124(n))`
-/

namespace A188097.P18331444142869830035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127381 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A000124 n).toNat

end

end A188097.P18331444142869830035

/-! ## A188097.P12537179047662728758

`char[A264995(n)]*A188105(A000124(n))`
-/

namespace A188097.P12537179047662728758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264995 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A000124 n).toNat

end

end A188097.P12537179047662728758

/-! ## A188097.P10501760353006794286

`A188105(A000124(n))+A000007(n+1)`
-/

namespace A188097.P10501760353006794286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000124 n).toNat + A000007 (n + 1)

end

end A188097.P10501760353006794286

/-! ## A188097.P14050090492797992635

`A007318(C(2, n))*A188105(A000124(n))`
-/

namespace A188097.P14050090492797992635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188105 (A000124 n).toNat

end

end A188097.P14050090492797992635

/-! ## A188097.P13119209342734855462

`A188105(A000124(n))+char[A188105(n+1)]`
-/

namespace A188097.P13119209342734855462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188097.P13119209342734855462

/-!
# A188098: Number of (n+3) X 5 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188098, there is no canonical definition to state claims against.
-/

/-! ## A188098.P13468303100010752651

`A188105(∑[n+1]+2)`
-/

namespace A188098.P13468303100010752651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188098.P13468303100010752651

/-! ## A188098.P17460442794824291469

`or(char[1], A188105(A133263(n+1)))`
-/

namespace A188098.P17460442794824291469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A133263 (n + 1)).toNat)

end

end A188098.P17460442794824291469

/-! ## A188098.P133092957768867502

`A188105(A133263(n+1))%A016901(n)`
-/

namespace A188098.P133092957768867502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188105 (A133263 (n + 1)).toNat) (A016901 n)

end

end A188098.P133092957768867502

/-! ## A188098.P7514279017269420493

`lcm(A033999(n), A188105(A133263(n+1)))`
-/

namespace A188098.P7514279017269420493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188105 (A133263 (n + 1)).toNat)

end

end A188098.P7514279017269420493

/-! ## A188098.P3021541124898568598

`A057077(n)²*A188105(A133263(n+1))`
-/

namespace A188098.P3021541124898568598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A188105 (A133263 (n + 1)).toNat

end

end A188098.P3021541124898568598

/-! ## A188098.P2090764055354426491

`char[A057979(n)]*A188105(A133263(n+1))`
-/

namespace A188098.P2090764055354426491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A133263 (n + 1)).toNat

end

end A188098.P2090764055354426491

/-! ## A188098.P5147914300949452868

`A033999(2*n)*A188105(A133263(n+1))`
-/

namespace A188098.P5147914300949452868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A188105 (A133263 (n + 1)).toNat

end

end A188098.P5147914300949452868

/-! ## A188098.P18030820558176568019

`A057979(2*n)*A188105(A133263(n+1))`
-/

namespace A188098.P18030820558176568019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A188105 (A133263 (n + 1)).toNat

end

end A188098.P18030820558176568019

/-! ## A188098.P6373960629437931222

`A007318(C(2, n))*A188105(A133263(n+1))`
-/

namespace A188098.P6373960629437931222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188105 (A133263 (n + 1)).toNat

end

end A188098.P6373960629437931222

/-!
# A188099: Number of (n+3) X 6 binary arrays with every 4 X 4 subblock commuting with each horizontal and vertical neighbor 4 X 4 subblock.

The programs for A188099, there is no canonical definition to state claims against.
-/

/-! ## A188099.P13310755171205359814

`A188105(∑[n+2]+4)`
-/

namespace A188099.P13310755171205359814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188099.P13310755171205359814

/-! ## A188099.P16516713547308810110

`or(char[1], A188105(A167614(n+1)))`
-/

namespace A188099.P16516713547308810110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A167614 (n + 1)).toNat)

end

end A188099.P16516713547308810110

/-! ## A188099.P12256071554304957893

`or(char[1], A188105(A055998(n)+6))`
-/

namespace A188099.P12256071554304957893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188105 (A055998 n + 6).toNat)

end

end A188099.P12256071554304957893

/-! ## A188099.P13386756137371751173

`lcm(A033999(n), A188105(A167614(n+1)))`
-/

namespace A188099.P13386756137371751173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188105 (A167614 (n + 1)).toNat)

end

end A188099.P13386756137371751173

/-! ## A188099.P4279457175667563799

`A033999(n)²*A188105(A055998(n)+6)`
-/

namespace A188099.P4279457175667563799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A188105 (A055998 n + 6).toNat

end

end A188099.P4279457175667563799

/-! ## A188099.P15146986761640417641

`char[A026741(n)]*A188105(A055998(n)+6)`
-/

namespace A188099.P15146986761640417641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A055998 n + 6).toNat

end

end A188099.P15146986761640417641

/-! ## A188099.P3234026295512027401

`char[A061579(n)]*A188105(A055998(n)+6)`
-/

namespace A188099.P3234026295512027401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188105 (A055998 n + 6).toNat

end

end A188099.P3234026295512027401

/-! ## A188099.P1101284934906088017

`A188105(A055998(n)+6)+A000007(n+1)`
-/

namespace A188099.P1101284934906088017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188105 (A055998 n + 6).toNat + A000007 (n + 1)

end

end A188099.P1101284934906088017

/-! ## A188099.P9642603886785465495

`A007318(C(2, n))*A188105(A055998(n)+6)`
-/

namespace A188099.P9642603886785465495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188105 (A055998 n + 6).toNat

end

end A188099.P9642603886785465495

/-! ## A188099.P1265837793289463166

`A007318(and(2, -n))*A188105(A055998(n)+6)`
-/

namespace A188099.P1265837793289463166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A188105 (A055998 n + 6).toNat

end

end A188099.P1265837793289463166

