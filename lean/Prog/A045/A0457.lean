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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

/-!
# A045700: Primes of form p^2+q^3 where p and q are primes.

The programs for A045700, there is no canonical definition to state claims against.
-/

/-! ## A045700.P15378708855547002656

`p?[A045699(A048673(n+1))]`
-/

namespace A045700.P15378708855547002656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045700.P15378708855547002656

/-!
# A045701: Number of ways n can be written as a sum of a square of a prime and a cube of a prime.

The programs for A045701, there is no canonical definition to state claims against.
-/

/-! ## A045701.P9218334941956482053

`A014963(A055388(n+1))*char[A045699(n+1)-1]`
-/

namespace A045701.P9218334941956482053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055388 (n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045701.P9218334941956482053

/-! ## A045701.P6025673161458813527

`A007318(A265917(2*n+1))*char[A045699(n+1)-1]`
-/

namespace A045701.P6025673161458813527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A265917 (2 * n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045701.P6025673161458813527

/-! ## A045701.P6079817470926225335

`and(char[A045699(n+1)-1], A006046(n²))`
-/

namespace A045701.P6079817470926225335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A006046 (n ^ 2))

end

end A045701.P6079817470926225335

/-! ## A045701.P14834064837541012066

`A011655((n²+1)*char[A045699(n+1)-1])`
-/

namespace A045701.P14834064837541012066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n ^ 2 + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A045701.P14834064837541012066

/-! ## A045701.P2683354453863859869

`A019425(2*n²*char[A045699(n+1)-1])`
-/

namespace A045701.P2683354453863859869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n ^ 2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A045701.P2683354453863859869

/-! ## A045701.P2880263305097960080

`A019433(2*n²*char[A045699(n+1)-1])`
-/

namespace A045701.P2880263305097960080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (2 * n ^ 2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A045701.P2880263305097960080

/-! ## A045701.P5473624082173047903

`ceil(char[A045699(n+1)-1]/A199943(n+1))`
-/

namespace A045701.P5473624082173047903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A199943 (n + 1) : ℚ)⌉

end

end A045701.P5473624082173047903

/-! ## A045701.P5848025212885501748

`A023969(char[A045699(n+1)-1]*A027688(n))`
-/

namespace A045701.P5848025212885501748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A027688 n).toNat

end

end A045701.P5848025212885501748

/-! ## A045701.P5440919504858079155

`char[A045699(n+1)-1]*A001511(A341215(n+1))`
-/

namespace A045701.P5440919504858079155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001511 (A341215 (n + 1)).toNat

end

end A045701.P5440919504858079155

/-! ## A045701.P13071742096389115555

`and(char[A045699(n+1)-1], A005408(n²))`
-/

namespace A045701.P13071742096389115555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005408 (n ^ 2))

end

end A045701.P13071742096389115555

/-! ## A045701.P5008916732703864506

`and(char[A045699(n+1)-1], A341234(n+1))`
-/

namespace A045701.P5008916732703864506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045699 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A341234 (n + 1))

end

end A045701.P5008916732703864506

/-!
# A045702: Sums of two squares of Fibonacci numbers.

The programs for A045702, the canonical program `A045702.P6657115471213051972` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045702 has offset 1).

The definition of A045702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045702.P6657115471213051972

`record[A094571(A245300(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045702

/-- `record[A094571(A245300(n))]` -/
def P6657115471213051972.Spec : Prop :=
  ∀ n, P6657115471213051972.a n = A045702 (n + 1)

theorem P6657115471213051972.correct : P6657115471213051972.Spec := by
  intro n
  simp only [A045702, Nat.add_sub_cancel]

end A045702

/-! ## A045702.P6592306163060377066

`A001481(A238985(n+1))%A240522(3*(n+1))`
-/

namespace A045702.P6592306163060377066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001481 (A238985 (n + 1)).toNat) (A240522 (3 * (n + 1)))

end

end A045702.P6592306163060377066

namespace A045702

/-- `A001481(A238985(n+1))%A240522(3*(n+1))` -/
def P6592306163060377066.Spec : Prop :=
  ∀ n, P6592306163060377066.a n = A045702 (n + 1)

end A045702

/-! ## A045702.P16075537499643899152

`eq[char[A094571(n)], A049100(n+1)]`
-/

namespace A045702.P16075537499643899152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094571 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A045702.P16075537499643899152

namespace A045702

/-- `eq[char[A094571(n)], A049100(n+1)]` -/
def P16075537499643899152.Spec : Prop :=
  ∀ n, (P16075537499643899152.a n : ℤ) = A045702 (n + 1)

end A045702

/-! ## A045702.P13259055911446032504

`lt[A279418(A000041(n)), A004018(n)]`
-/

namespace A045702.P13259055911446032504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279418 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045702.P13259055911446032504

namespace A045702

/-- `lt[A279418(A000041(n)), A004018(n)]` -/
def P13259055911446032504.Spec : Prop :=
  ∀ n, (P13259055911446032504.a n : ℤ) = A045702 (n + 1)

end A045702

/-! ## A045702.P7986374619445316462

`lt[A122204(A180696(n+1)), A004018(n)]`
-/

namespace A045702.P7986374619445316462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (A180696 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045702.P7986374619445316462

namespace A045702

/-- `lt[A122204(A180696(n+1)), A004018(n)]` -/
def P7986374619445316462.Spec : Prop :=
  ∀ n, (P7986374619445316462.a n : ℤ) = A045702 (n + 1)

end A045702

/-!
# A045703: Primes of the form F(i)^2 + F(j)^2, where F() are Fibonacci numbers.

The programs for A045703, there is no canonical definition to state claims against.
-/

/-! ## A045703.P14706768806180305856

`p?[A045702(n+1)]`
-/

namespace A045703.P14706768806180305856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045703.P14706768806180305856

/-! ## A045703.P5783859163708792653

`p?[record[A045702(A052938(n))]]`
-/

namespace A045703.P5783859163708792653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045702 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045703.P5783859163708792653

/-! ## A045703.P13306767560566216121

`p?[record[A045702(A133310(n))]]`
-/

namespace A045703.P13306767560566216121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045702 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045703.P13306767560566216121

/-! ## A045703.P9871164030535260396

`p?[record[A045702(A154958(n))]]`
-/

namespace A045703.P9871164030535260396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045702 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045703.P9871164030535260396

/-! ## A045703.P3458916173288133514

`p?[record[A045702(A246694(n))]]`
-/

namespace A045703.P3458916173288133514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045702 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045703.P3458916173288133514

/-!
# A045704: Numbers of the form F(i)^2 + F(j)^3, where F() are Fibonacci numbers.

The programs for A045704, there is no canonical definition to state claims against.
-/

/-! ## A045704.P12696678672384153152

`lt[0, A045706(n)]`
-/

namespace A045704.P12696678672384153152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045704.P12696678672384153152

/-! ## A045704.P12170884507798224197

`eq[A045706(n), A309059(A014683(n+1))]`
-/

namespace A045704.P12170884507798224197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (A014683 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045704.P12170884507798224197

/-! ## A045704.P3480871391735610643

`eq[A000038(n*A045706(n)), A000038(n)]`
-/

namespace A045704.P3480871391735610643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A045706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045704.P3480871391735610643

/-! ## A045704.P16229594948242365069

`eq[A035363(n)^A045706(n), A035363(n)]`
-/

namespace A045704.P16229594948242365069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 n : ℚ) ^ (A045706 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A045704.P16229594948242365069

/-! ## A045704.P4251247438804224296

`eq[A045706(n), A309059(A055562(n))]`
-/

namespace A045704.P4251247438804224296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (A055562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045704.P4251247438804224296

/-!
# A045705: Primes of the form F(i)^2 + F(j)^3, where F() are Fibonacci numbers.

The programs for A045705, there is no canonical definition to state claims against.
-/

/-! ## A045705.P18131833530494605056

`p?[A045704(n+1)]`
-/

namespace A045705.P18131833530494605056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045705.P18131833530494605056

/-! ## A045705.P4750983786933368930

`p?[record[A045704(A052938(n))]]`
-/

namespace A045705.P4750983786933368930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045705.P4750983786933368930

/-! ## A045705.P2439595348757356255

`p?[record[A045704(A117910(n))]]`
-/

namespace A045705.P2439595348757356255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045705.P2439595348757356255

/-! ## A045705.P12138067338964619894

`p?[record[A045704(A126759(n))]]`
-/

namespace A045705.P12138067338964619894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045705.P12138067338964619894

/-! ## A045705.P4828690883267814613

`p?[record[A045704(A152271(n))]]`
-/

namespace A045705.P4828690883267814613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045705.P4828690883267814613

/-!
# A045706: Number of ways n can be written as a sum of a square of a Fibonacci number and a cube of a Fibonacci number; F(1) = F(2) = 1 are considered the same.

The programs for A045706, there is no canonical definition to state claims against.
-/

/-! ## A045706.P4665799772337206866

`char[A045704(n+1)]*A309059(A055562(n))`
-/

namespace A045706.P4665799772337206866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A309059 (A055562 n).toNat

end

end A045706.P4665799772337206866

/-! ## A045706.P946378818951995908

`char[A045704(n+1)]*A309059(A134917(n+1))`
-/

namespace A045706.P946378818951995908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A309059 (A134917 (n + 1)).toNat

end

end A045706.P946378818951995908

/-! ## A045706.P8709276200866974001

`char[A045704(n+1)]+val(A067983(n), n+2)`
-/

namespace A045706.P8709276200866974001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + SequenceMachineLib.valuation (A067983 n).toNat (n + 2)

end

end A045706.P8709276200866974001

/-! ## A045706.P4755839556645827329

`A045701(A045709(n+1))+char[A045704(n+1)]`
-/

namespace A045706.P4755839556645827329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045701 (A045709 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045706.P4755839556645827329

/-! ## A045706.P17090936732667057454

`A045701((n+5)²)+char[A045704(n+1)]`
-/

namespace A045706.P17090936732667057454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045701 ((n + 5) ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045706.P17090936732667057454

/-!
# A045707: Primes with first digit 1.

The programs for A045707, there is no canonical definition to state claims against.
-/

/-! ## A045707.P392602936732816858

`p?[A206287(n+1)]`
-/

namespace A045707.P392602936732816858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045707.P392602936732816858

/-! ## A045707.P12036015127021245496

`p?[A077677(n+1)]`
-/

namespace A045707.P12036015127021245496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045707.P12036015127021245496

/-! ## A045707.P10073717448313784050

`∩[A077359(n+1), A077677(n+1)]`
-/

namespace A045707.P10073717448313784050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P10073717448313784050

/-! ## A045707.P15513678231260986397

`∩[A077677(n+1), A208270(n+1)]`
-/

namespace A045707.P15513678231260986397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P15513678231260986397

/-! ## A045707.P14413953839612791178

`∩[A065396(n+1), A077677(n+1)]`
-/

namespace A045707.P14413953839612791178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P14413953839612791178

/-! ## A045707.P15001828566160719109

`∩[A004139(n+1), A077677(n+1)]`
-/

namespace A045707.P15001828566160719109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P15001828566160719109

/-! ## A045707.P16823165678174667772

`∩[A045319(n+1), A077677(n+1)]`
-/

namespace A045707.P16823165678174667772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P16823165678174667772

/-! ## A045707.P16849144142878246226

`∩[A045344(n+1), A077677(n+1)]`
-/

namespace A045707.P16849144142878246226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P16849144142878246226

/-! ## A045707.P18112299517488638474

`∩[A065091(n+1), A077677(n+1)]`
-/

namespace A045707.P18112299517488638474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P18112299517488638474

/-! ## A045707.P3390088761334986325

`∩[A000040(n+1), A077677(n+1)]`
-/

namespace A045707.P3390088761334986325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P3390088761334986325

/-! ## A045707.P15746134030468857734

`∩[A077677(n+1), A083249(n+1)]`
-/

namespace A045707.P15746134030468857734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P15746134030468857734

/-! ## A045707.P13044151095316321080

`∩[A000040(n+1), A206287(n+1)]`
-/

namespace A045707.P13044151095316321080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P13044151095316321080

/-! ## A045707.P7096543163359584703

`p?[A000040(n+1)*A077648(n+1)]`
-/

namespace A045707.P7096543163359584703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A077648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045707.P7096543163359584703

/-! ## A045707.P6849259769684206790

`∩[A077677(n+1), A161346(n+1)]`
-/

namespace A045707.P6849259769684206790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P6849259769684206790

/-! ## A045707.P10341436061012851695

`∩[A051948(n+1), A077677(n+1)]`
-/

namespace A045707.P10341436061012851695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P10341436061012851695

/-! ## A045707.P6300662271321787833

`∩[A053813(n+1), A077677(n+1)]`
-/

namespace A045707.P6300662271321787833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P6300662271321787833

/-! ## A045707.P5142481842776574132

`∩[A053813(n+1), A206287(n+1)]`
-/

namespace A045707.P5142481842776574132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P5142481842776574132

/-! ## A045707.P6973736494078934592

`∩[A140826(n+1), A077677(n+1)]`
-/

namespace A045707.P6973736494078934592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P6973736494078934592

/-! ## A045707.P3329914242407125263

`∩[A064728(n+1), A077677(n+1)]`
-/

namespace A045707.P3329914242407125263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P3329914242407125263

/-! ## A045707.P12505937603601291332

`∩[A066542(n+1), A077677(n+1)]`
-/

namespace A045707.P12505937603601291332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045707.P12505937603601291332

/-!
# A045708: Primes with first digit 2.

The programs for A045708, the canonical program `A045708.P4966505932698422722` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045708 has offset 1).

The definition of A045708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045708.P18437624556457570588

`∩[A320585(n+1), A355430(n+1)]`
-/

namespace A045708.P18437624556457570588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P18437624556457570588

namespace A045708

/-- `∩[A320585(n+1), A355430(n+1)]` -/
def P18437624556457570588.Spec : Prop :=
  ∀ n, (P18437624556457570588.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P4966505932698422722

`p?[A034843(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045708

/-- `p?[A034843(n+1)]` -/
def P4966505932698422722.Spec : Prop :=
  ∀ n, P4966505932698422722.a n = A045708 (n + 1)

theorem P4966505932698422722.correct : P4966505932698422722.Spec := by
  intro n
  simp only [A045708, Nat.add_sub_cancel]

end A045708

/-! ## A045708.P9922300729147204050

`∩[A034843(n+1), A208272(n+1)]`
-/

namespace A045708.P9922300729147204050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P9922300729147204050

namespace A045708

/-- `∩[A034843(n+1), A208272(n+1)]` -/
def P9922300729147204050.Spec : Prop :=
  ∀ n, (P9922300729147204050.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P4733971776316218674

`∩[A034843(n+1), A320585(n+1)]`
-/

namespace A045708.P4733971776316218674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P4733971776316218674

namespace A045708

/-- `∩[A034843(n+1), A320585(n+1)]` -/
def P4733971776316218674.Spec : Prop :=
  ∀ n, (P4733971776316218674.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P17373477132004535978

`∩[A034843(n+1), A355430(n+1)]`
-/

namespace A045708.P17373477132004535978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P17373477132004535978

namespace A045708

/-- `∩[A034843(n+1), A355430(n+1)]` -/
def P17373477132004535978.Spec : Prop :=
  ∀ n, (P17373477132004535978.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P3383578731654556531

`p?[A077678(n+1)]`
-/

namespace A045708.P3383578731654556531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045708.P3383578731654556531

namespace A045708

/-- `p?[A077678(n+1)]` -/
def P3383578731654556531.Spec : Prop :=
  ∀ n, P3383578731654556531.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P17613510333541119862

`∩[A034843(n+1), A077678(n+1)]`
-/

namespace A045708.P17613510333541119862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P17613510333541119862

namespace A045708

/-- `∩[A034843(n+1), A077678(n+1)]` -/
def P17613510333541119862.Spec : Prop :=
  ∀ n, (P17613510333541119862.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P11112649085859605264

`∩[A077678(n+1), A208272(n+1)]`
-/

namespace A045708.P11112649085859605264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P11112649085859605264

namespace A045708

/-- `∩[A077678(n+1), A208272(n+1)]` -/
def P11112649085859605264.Spec : Prop :=
  ∀ n, (P11112649085859605264.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P11608729312543497568

`∩[A077678(n+1), A320585(n+1)]`
-/

namespace A045708.P11608729312543497568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P11608729312543497568

namespace A045708

/-- `∩[A077678(n+1), A320585(n+1)]` -/
def P11608729312543497568.Spec : Prop :=
  ∀ n, (P11608729312543497568.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P7683692940968592402

`∩[A077678(n+1), A355430(n+1)]`
-/

namespace A045708.P7683692940968592402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045708.P7683692940968592402

namespace A045708

/-- `∩[A077678(n+1), A355430(n+1)]` -/
def P7683692940968592402.Spec : Prop :=
  ∀ n, (P7683692940968592402.a n : ℤ) = A045708 (n + 1)

end A045708

/-! ## A045708.P3502852333754275460

`record[A006530(A034843(n+2))]`
-/

namespace A045708.P3502852333754275460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045708.P3502852333754275460

namespace A045708

/-- `record[A006530(A034843(n+2))]` -/
def P3502852333754275460.Spec : Prop :=
  ∀ n, P3502852333754275460.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P1184278445101259996

`record[A020639(A077678(n+3))]`
-/

namespace A045708.P1184278445101259996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077678 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045708.P1184278445101259996

namespace A045708

/-- `record[A020639(A077678(n+3))]` -/
def P1184278445101259996.Spec : Prop :=
  ∀ n, P1184278445101259996.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P18414317836397767498

`filter[A034843(n+1), A010051(#)]`
-/

namespace A045708.P18414317836397767498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045708.P18414317836397767498

namespace A045708

/-- `filter[A034843(n+1), A010051(#)]` -/
def P18414317836397767498.Spec : Prop :=
  ∀ n, P18414317836397767498.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P13662195021225872544

`filter[A077678(n+1), A010051(#)]`
-/

namespace A045708.P13662195021225872544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045708.P13662195021225872544

namespace A045708

/-- `filter[A077678(n+1), A010051(#)]` -/
def P13662195021225872544.Spec : Prop :=
  ∀ n, P13662195021225872544.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P8635429489671233128

`filter[A077678(n+1), A069513(#)]`
-/

namespace A045708.P8635429489671233128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045708.P8635429489671233128

namespace A045708

/-- `filter[A077678(n+1), A069513(#)]` -/
def P8635429489671233128.Spec : Prop :=
  ∀ n, P8635429489671233128.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P16340657358615974135

`filter[A077678(n+1), A091862(#)]`
-/

namespace A045708.P16340657358615974135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A045708.P16340657358615974135

namespace A045708

/-- `filter[A077678(n+1), A091862(#)]` -/
def P16340657358615974135.Spec : Prop :=
  ∀ n, P16340657358615974135.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P4692896910325284649

`filter[A077678(n+1), A174897(#)]`
-/

namespace A045708.P4692896910325284649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A045708.P4692896910325284649

namespace A045708

/-- `filter[A077678(n+1), A174897(#)]` -/
def P4692896910325284649.Spec : Prop :=
  ∀ n, P4692896910325284649.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P7617668192344855364

`filter[A034843(n+1), A323153(#)]`
-/

namespace A045708.P7617668192344855364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045708.P7617668192344855364

namespace A045708

/-- `filter[A034843(n+1), A323153(#)]` -/
def P7617668192344855364.Spec : Prop :=
  ∀ n, P7617668192344855364.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P6917571184018898054

`filter[A077678(n+1), A302777(#)]`
-/

namespace A045708.P6917571184018898054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A045708.P6917571184018898054

namespace A045708

/-- `filter[A077678(n+1), A302777(#)]` -/
def P6917571184018898054.Spec : Prop :=
  ∀ n, P6917571184018898054.a n = A045708 (n + 1)

end A045708

/-! ## A045708.P15650772680674620294

`filter[A034843(n+1), A358751(#)]`
-/

namespace A045708.P15650772680674620294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A045708.P15650772680674620294

namespace A045708

/-- `filter[A034843(n+1), A358751(#)]` -/
def P15650772680674620294.Spec : Prop :=
  ∀ n, P15650772680674620294.a n = A045708 (n + 1)

end A045708

/-!
# A045709: Primes with first digit 3.

The programs for A045709, there is no canonical definition to state claims against.
-/

/-! ## A045709.P7271284311856989227

`p?[A077679(n+1)]`
-/

namespace A045709.P7271284311856989227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045709.P7271284311856989227

/-! ## A045709.P11143160142491522716

`A077549(A017197(n))`
-/

namespace A045709.P11143160142491522716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017197 n).toNat

end

end A045709.P11143160142491522716

/-! ## A045709.P1939627427148739964

`filter[A077679(n+1), A010051(#)]`
-/

namespace A045709.P1939627427148739964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045709.P1939627427148739964

/-! ## A045709.P16195603254077501472

`filter[A077679(n+1), A069513(#)]`
-/

namespace A045709.P16195603254077501472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045709.P16195603254077501472

/-! ## A045709.P2904298057262248312

`filter[A077679(n+1), A091862(#)]`
-/

namespace A045709.P2904298057262248312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A045709.P2904298057262248312

/-! ## A045709.P11415562724914706488

`filter[A077679(n+1), A174897(#)]`
-/

namespace A045709.P11415562724914706488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A045709.P11415562724914706488

/-! ## A045709.P10091237522567107884

`filter[A077679(n+1), A302777(#)]`
-/

namespace A045709.P10091237522567107884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A045709.P10091237522567107884

/-! ## A045709.P2506760671858458156

`filter[A077679(n+1), A323152(#)]`
-/

namespace A045709.P2506760671858458156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A045709.P2506760671858458156

/-! ## A045709.P15948979692578364691

`filter[A077679(n+1), A323153(#)]`
-/

namespace A045709.P15948979692578364691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045709.P15948979692578364691

/-! ## A045709.P13473431361438567992

`filter[A077679(n+1), A324290(#)]`
-/

namespace A045709.P13473431361438567992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A045709.P13473431361438567992

/-! ## A045709.P5693282716463793018

`filter[A077679(n+1), A342004(#)]`
-/

namespace A045709.P5693282716463793018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A045709.P5693282716463793018

/-! ## A045709.P8943112549320523028

`filter[A077679(n+1), A345064(#)]`
-/

namespace A045709.P8943112549320523028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A045709.P8943112549320523028

/-! ## A045709.P14032152795055971884

`filter[A077679(n+1), A345950(#)]`
-/

namespace A045709.P14032152795055971884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A045709.P14032152795055971884

/-! ## A045709.P2390415732994516745

`filter[A077679(n+1), A351564(#)]`
-/

namespace A045709.P2390415732994516745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A045709.P2390415732994516745

/-! ## A045709.P5127174405225864145

`filter[A077679(n+1), A351957(#)]`
-/

namespace A045709.P5127174405225864145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A045709.P5127174405225864145

/-! ## A045709.P5068353543897108443

`filter[A077679(n+1), A353787(#)]`
-/

namespace A045709.P5068353543897108443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A045709.P5068353543897108443

/-! ## A045709.P8161716029469285558

`∩[A077679(n+1), A061345(n)]`
-/

namespace A045709.P8161716029469285558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045709.P8161716029469285558

/-! ## A045709.P9027962574879267153

`∩[A000040(n+1), A077679(n+1)]`
-/

namespace A045709.P9027962574879267153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045709.P9027962574879267153

/-! ## A045709.P6796032758833631147

`∩[A000430(n+1), A077679(n+1)]`
-/

namespace A045709.P6796032758833631147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045709.P6796032758833631147

/-! ## A045709.P14318068792932816834

`∩[A000961(n+1), A077679(n+1)]`
-/

namespace A045709.P14318068792932816834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045709.P14318068792932816834

/-!
# A045710: Primes with first digit 4.

The programs for A045710, there is no canonical definition to state claims against.
-/

/-! ## A045710.P14826177980914441212

`p?[A077680(n+1)]`
-/

namespace A045710.P14826177980914441212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045710.P14826177980914441212

/-! ## A045710.P7369476811982331133

`∩[A077680(n+1), A223458(n+1)]`
-/

namespace A045710.P7369476811982331133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P7369476811982331133

/-! ## A045710.P9558981219267295846

`A077549(A017209(n))`
-/

namespace A045710.P9558981219267295846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017209 n).toNat

end

end A045710.P9558981219267295846

/-! ## A045710.P3230362492922341358

`filter[A077680(n+1), A010051(#)]`
-/

namespace A045710.P3230362492922341358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045710.P3230362492922341358

/-! ## A045710.P17166822356891022953

`filter[A077680(n+1), A069513(#)]`
-/

namespace A045710.P17166822356891022953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045710.P17166822356891022953

/-! ## A045710.P7553282121443053144

`filter[A077680(n+1), A091862(#)]`
-/

namespace A045710.P7553282121443053144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A045710.P7553282121443053144

/-! ## A045710.P6495896843710774011

`filter[A077680(n+1), A174897(#)]`
-/

namespace A045710.P6495896843710774011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A045710.P6495896843710774011

/-! ## A045710.P1132397882117670259

`filter[A077680(n+1), A302777(#)]`
-/

namespace A045710.P1132397882117670259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A045710.P1132397882117670259

/-! ## A045710.P16765864479297159681

`filter[A077680(n+1), A323152(#)]`
-/

namespace A045710.P16765864479297159681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A045710.P16765864479297159681

/-! ## A045710.P8282509324926678373

`filter[A077680(n+1), A323153(#)]`
-/

namespace A045710.P8282509324926678373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045710.P8282509324926678373

/-! ## A045710.P9907602923925696209

`filter[A077680(n+1), A342004(#)]`
-/

namespace A045710.P9907602923925696209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A045710.P9907602923925696209

/-! ## A045710.P8918101533825912769

`filter[A077680(n+1), A345064(#)]`
-/

namespace A045710.P8918101533825912769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A045710.P8918101533825912769

/-! ## A045710.P12690809848255972802

`filter[A077680(n+1), A345950(#)]`
-/

namespace A045710.P12690809848255972802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A045710.P12690809848255972802

/-! ## A045710.P5169461886471513851

`∩[A077680(n+1), A061345(n)]`
-/

namespace A045710.P5169461886471513851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P5169461886471513851

/-! ## A045710.P17621343377935854518

`record[A006530(2*A077680(n+1))]`
-/

namespace A045710.P17621343377935854518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A077680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045710.P17621343377935854518

/-! ## A045710.P9150146128684956398

`∩[A000040(n+1), A077680(n+1)]`
-/

namespace A045710.P9150146128684956398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P9150146128684956398

/-! ## A045710.P5706665946500339981

`∩[A000430(n+1), A077680(n+1)]`
-/

namespace A045710.P5706665946500339981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P5706665946500339981

/-! ## A045710.P14381553914048212064

`∩[A000961(n+1), A077680(n+1)]`
-/

namespace A045710.P14381553914048212064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P14381553914048212064

/-! ## A045710.P6718721497480026294

`∩[A004139(n+1), A077680(n+1)]`
-/

namespace A045710.P6718721497480026294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P6718721497480026294

/-! ## A045710.P7916432679280620038

`∩[A006005(n+1), A077680(n+1)]`
-/

namespace A045710.P7916432679280620038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045710.P7916432679280620038

/-!
# A045711: Primes with first digit 5.

The programs for A045711, there is no canonical definition to state claims against.
-/

/-! ## A045711.P7076781272823345569

`p?[A077681(n+1)]`
-/

namespace A045711.P7076781272823345569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045711.P7076781272823345569

/-! ## A045711.P12212596237389770040

`A077549(A017221(n))`
-/

namespace A045711.P12212596237389770040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017221 n).toNat

end

end A045711.P12212596237389770040

/-! ## A045711.P9191537861487581620

`filter[A077681(n+1), A010051(#)]`
-/

namespace A045711.P9191537861487581620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045711.P9191537861487581620

/-! ## A045711.P15637388464730998804

`filter[A077681(n+1), A069513(#)]`
-/

namespace A045711.P15637388464730998804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045711.P15637388464730998804

/-! ## A045711.P6731917369584284933

`filter[A077681(n+1), A091862(#)]`
-/

namespace A045711.P6731917369584284933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A045711.P6731917369584284933

/-! ## A045711.P5732391686048214450

`filter[A077681(n+1), A174897(#)]`
-/

namespace A045711.P5732391686048214450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A045711.P5732391686048214450

/-! ## A045711.P10062100396410896027

`filter[A077681(n+1), A302777(#)]`
-/

namespace A045711.P10062100396410896027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A045711.P10062100396410896027

/-! ## A045711.P3593783438141601697

`filter[A077681(n+1), A323152(#)]`
-/

namespace A045711.P3593783438141601697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A045711.P3593783438141601697

/-! ## A045711.P14971955300686608555

`filter[A077681(n+1), A323153(#)]`
-/

namespace A045711.P14971955300686608555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A045711.P14971955300686608555

/-! ## A045711.P14726156278899477786

`filter[A077681(n+1), A342004(#)]`
-/

namespace A045711.P14726156278899477786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A045711.P14726156278899477786

/-! ## A045711.P6337971631955975290

`filter[A077681(n+1), A345064(#)]`
-/

namespace A045711.P6337971631955975290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A045711.P6337971631955975290

/-! ## A045711.P14986315316497522585

`∩[A077681(n+1), A061345(n)]`
-/

namespace A045711.P14986315316497522585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P14986315316497522585

/-! ## A045711.P8248384747034620419

`∩[A000040(n+1), A077681(n+1)]`
-/

namespace A045711.P8248384747034620419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P8248384747034620419

/-! ## A045711.P11030460658794721551

`∩[A000430(n+1), A077681(n+1)]`
-/

namespace A045711.P11030460658794721551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P11030460658794721551

/-! ## A045711.P7680377855450690672

`∩[A000961(n+1), A077681(n+1)]`
-/

namespace A045711.P7680377855450690672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P7680377855450690672

/-! ## A045711.P4405477354051016729

`∩[A006005(n+1), A077681(n+1)]`
-/

namespace A045711.P4405477354051016729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P4405477354051016729

/-! ## A045711.P429571842150166567

`∩[A008578(n+1), A077681(n+1)]`
-/

namespace A045711.P429571842150166567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P429571842150166567

/-! ## A045711.P9257385040731333908

`∩[A009087(n+1), A077681(n+1)]`
-/

namespace A045711.P9257385040731333908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P9257385040731333908

/-! ## A045711.P9101708180042706360

`∩[A033946(n+1), A077681(n+1)]`
-/

namespace A045711.P9101708180042706360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P9101708180042706360

/-! ## A045711.P1091742976180254007

`∩[A045344(n+1), A077681(n+1)]`
-/

namespace A045711.P1091742976180254007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045711.P1091742976180254007

/-!
# A045712: Primes with first digit 6.

The programs for A045712, there is no canonical definition to state claims against.
-/

/-! ## A045712.P12663533903701770866

`p?[A077682(n+1)]`
-/

namespace A045712.P12663533903701770866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045712.P12663533903701770866

/-! ## A045712.P12863633183077957173

`A077549(A017233(n))`
-/

namespace A045712.P12863633183077957173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017233 n).toNat

end

end A045712.P12863633183077957173

/-! ## A045712.P12100395883077110013

`A077549(A122709(n+1))`
-/

namespace A045712.P12100395883077110013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A122709 (n + 1)).toNat

end

end A045712.P12100395883077110013

/-! ## A045712.P16584833559765515483

`record[A020639(A077682(n+2))]`
-/

namespace A045712.P16584833559765515483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077682 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045712.P16584833559765515483

/-! ## A045712.P9201819051301823455

`filter[A077682(n+1), A010051(#)]`
-/

namespace A045712.P9201819051301823455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045712.P9201819051301823455

/-! ## A045712.P5490676463874422455

`filter[A077682(n+1), A069513(#)]`
-/

namespace A045712.P5490676463874422455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045712.P5490676463874422455

/-! ## A045712.P13373482449122974231

`∩[A077682(n+1), A061345(n)]`
-/

namespace A045712.P13373482449122974231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P13373482449122974231

/-! ## A045712.P14024826405747068899

`∩[A000040(n+1), A077682(n+1)]`
-/

namespace A045712.P14024826405747068899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P14024826405747068899

/-! ## A045712.P1155407891923155103

`∩[A000430(n+1), A077682(n+1)]`
-/

namespace A045712.P1155407891923155103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P1155407891923155103

/-! ## A045712.P219641580045679305

`∩[A000961(n+1), A077682(n+1)]`
-/

namespace A045712.P219641580045679305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P219641580045679305

/-! ## A045712.P10916139585811356920

`∩[A004139(n+1), A077682(n+1)]`
-/

namespace A045712.P10916139585811356920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P10916139585811356920

/-! ## A045712.P1977095967657144345

`∩[A006005(n+1), A077682(n+1)]`
-/

namespace A045712.P1977095967657144345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P1977095967657144345

/-! ## A045712.P14261788343756160356

`∩[A008578(n+1), A077682(n+1)]`
-/

namespace A045712.P14261788343756160356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P14261788343756160356

/-! ## A045712.P9024048648035023419

`∩[A009087(n+1), A077682(n+1)]`
-/

namespace A045712.P9024048648035023419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P9024048648035023419

/-! ## A045712.P990031144324413857

`∩[A033946(n+1), A077682(n+1)]`
-/

namespace A045712.P990031144324413857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P990031144324413857

/-! ## A045712.P3551226702743475080

`∩[A038672(n+1), A077682(n+1)]`
-/

namespace A045712.P3551226702743475080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P3551226702743475080

/-! ## A045712.P18285289193541433931

`∩[A045319(n+1), A077682(n+1)]`
-/

namespace A045712.P18285289193541433931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P18285289193541433931

/-! ## A045712.P6542771516942592062

`∩[A045344(n+1), A077682(n+1)]`
-/

namespace A045712.P6542771516942592062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P6542771516942592062

/-! ## A045712.P9351773214707396726

`∩[A046022(n+1), A077682(n+1)]`
-/

namespace A045712.P9351773214707396726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P9351773214707396726

/-! ## A045712.P2075597496546133882

`∩[A050150(n+1), A077682(n+1)]`
-/

namespace A045712.P2075597496546133882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045712.P2075597496546133882

/-!
# A045713: Primes with first digit 7.

The programs for A045713, there is no canonical definition to state claims against.
-/

/-! ## A045713.P11128165815333433957

`p?[A077683(n+1)]`
-/

namespace A045713.P11128165815333433957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045713.P11128165815333433957

/-! ## A045713.P18169652259864573162

`A077549(A017245(n))`
-/

namespace A045713.P18169652259864573162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017245 n).toNat

end

end A045713.P18169652259864573162

/-! ## A045713.P9854471642489172315

`record[A006530(A077683(n+2))]`
-/

namespace A045713.P9854471642489172315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045713.P9854471642489172315

/-! ## A045713.P3304398850824865022

`filter[A077683(n+1), A010051(#)]`
-/

namespace A045713.P3304398850824865022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045713.P3304398850824865022

/-! ## A045713.P5097909314873987850

`filter[A077683(n+1), A069513(#)]`
-/

namespace A045713.P5097909314873987850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045713.P5097909314873987850

/-! ## A045713.P1692013930539065378

`∩[A077683(n+1), A061345(n)]`
-/

namespace A045713.P1692013930539065378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P1692013930539065378

/-! ## A045713.P8458080325527726260

`record[A020639(or(1, A077683(n+1)))]`
-/

namespace A045713.P8458080325527726260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A077683 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045713.P8458080325527726260

/-! ## A045713.P6781757828912675428

`∩[A000040(n+1), A077683(n+1)]`
-/

namespace A045713.P6781757828912675428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P6781757828912675428

/-! ## A045713.P15356467763459538326

`∩[A000430(n+1), A077683(n+1)]`
-/

namespace A045713.P15356467763459538326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P15356467763459538326

/-! ## A045713.P10701407055561670625

`∩[A000961(n+1), A077683(n+1)]`
-/

namespace A045713.P10701407055561670625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P10701407055561670625

/-! ## A045713.P10671458415748393538

`∩[A004139(n+1), A077683(n+1)]`
-/

namespace A045713.P10671458415748393538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P10671458415748393538

/-! ## A045713.P12858383445951754693

`∩[A006005(n+1), A077683(n+1)]`
-/

namespace A045713.P12858383445951754693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P12858383445951754693

/-! ## A045713.P11470217670090275231

`∩[A008578(n+1), A077683(n+1)]`
-/

namespace A045713.P11470217670090275231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P11470217670090275231

/-! ## A045713.P16405460422474572321

`∩[A009087(n+1), A077683(n+1)]`
-/

namespace A045713.P16405460422474572321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P16405460422474572321

/-! ## A045713.P11702857623509229010

`∩[A033946(n+1), A077683(n+1)]`
-/

namespace A045713.P11702857623509229010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P11702857623509229010

/-! ## A045713.P18170760738599129639

`∩[A045319(n+1), A077683(n+1)]`
-/

namespace A045713.P18170760738599129639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P18170760738599129639

/-! ## A045713.P3649175012885143663

`∩[A045344(n+1), A077683(n+1)]`
-/

namespace A045713.P3649175012885143663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P3649175012885143663

/-! ## A045713.P301917696112263362

`∩[A046022(n+1), A077683(n+1)]`
-/

namespace A045713.P301917696112263362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P301917696112263362

/-! ## A045713.P11894299509973965729

`∩[A050376(n+1), A077683(n+1)]`
-/

namespace A045713.P11894299509973965729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P11894299509973965729

/-! ## A045713.P17258359442131214777

`∩[A053577(n+1), A077683(n+1)]`
-/

namespace A045713.P17258359442131214777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045713.P17258359442131214777

/-!
# A045714: Primes with first digit 8.

The programs for A045714, there is no canonical definition to state claims against.
-/

/-! ## A045714.P1463313535978948032

`p?[A077684(n+1)]`
-/

namespace A045714.P1463313535978948032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045714.P1463313535978948032

/-! ## A045714.P16810961695402154398

`A077549(A017257(n))`
-/

namespace A045714.P16810961695402154398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (A017257 n).toNat

end

end A045714.P16810961695402154398

/-! ## A045714.P3956518771397539778

`record[A020639(A077684(n+2))]`
-/

namespace A045714.P3956518771397539778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077684 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045714.P3956518771397539778

/-! ## A045714.P17570256310795530799

`filter[A077684(n+1), A010051(#)]`
-/

namespace A045714.P17570256310795530799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045714.P17570256310795530799

/-! ## A045714.P17671248521979588182

`filter[A077684(n+1), A069513(#)]`
-/

namespace A045714.P17671248521979588182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045714.P17671248521979588182

/-! ## A045714.P9624274226869998689

`∩[A077684(n+1), A061345(n)]`
-/

namespace A045714.P9624274226869998689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P9624274226869998689

/-! ## A045714.P4817210007543159371

`∩[A000040(n+1), A077684(n+1)]`
-/

namespace A045714.P4817210007543159371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P4817210007543159371

/-! ## A045714.P16005404198936731217

`∩[A000430(n+1), A077684(n+1)]`
-/

namespace A045714.P16005404198936731217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P16005404198936731217

/-! ## A045714.P13831849593631229843

`∩[A000961(n+1), A077684(n+1)]`
-/

namespace A045714.P13831849593631229843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P13831849593631229843

/-! ## A045714.P12115568338902069040

`∩[A004139(n+1), A077684(n+1)]`
-/

namespace A045714.P12115568338902069040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P12115568338902069040

/-! ## A045714.P12542822505443491312

`∩[A006005(n+1), A077684(n+1)]`
-/

namespace A045714.P12542822505443491312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P12542822505443491312

/-! ## A045714.P681561886189804838

`∩[A008578(n+1), A077684(n+1)]`
-/

namespace A045714.P681561886189804838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P681561886189804838

/-! ## A045714.P13975602342511812780

`∩[A009087(n+1), A077684(n+1)]`
-/

namespace A045714.P13975602342511812780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P13975602342511812780

/-! ## A045714.P3197423830245248451

`∩[A033946(n+1), A077684(n+1)]`
-/

namespace A045714.P3197423830245248451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P3197423830245248451

/-! ## A045714.P18061860612420064033

`∩[A045319(n+1), A077684(n+1)]`
-/

namespace A045714.P18061860612420064033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P18061860612420064033

/-! ## A045714.P5793924417987984463

`∩[A045344(n+1), A077684(n+1)]`
-/

namespace A045714.P5793924417987984463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P5793924417987984463

/-! ## A045714.P3628102598078933894

`∩[A046022(n+1), A077684(n+1)]`
-/

namespace A045714.P3628102598078933894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P3628102598078933894

/-! ## A045714.P2599449676047799234

`∩[A050376(n+1), A077684(n+1)]`
-/

namespace A045714.P2599449676047799234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P2599449676047799234

/-! ## A045714.P10305218160383768551

`∩[A053577(n+1), A077684(n+1)]`
-/

namespace A045714.P10305218160383768551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P10305218160383768551

/-! ## A045714.P9396054010247474022

`∩[A053813(n+1), A077684(n+1)]`
-/

namespace A045714.P9396054010247474022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045714.P9396054010247474022

/-!
# A045715: Primes with first digit 9.

The programs for A045715, there is no canonical definition to state claims against.
-/

/-! ## A045715.P18119770742948692677

`p?[A077685(n+1)]`
-/

namespace A045715.P18119770742948692677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045715.P18119770742948692677

/-! ## A045715.P4645396511493643485

`A077549(9*(n+1))`
-/

namespace A045715.P4645396511493643485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077549 (9 * (n + 1))

end

end A045715.P4645396511493643485

/-! ## A045715.P4839088948315839773

`filter[A077685(n+1), A010051(#)]`
-/

namespace A045715.P4839088948315839773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A045715.P4839088948315839773

/-! ## A045715.P11233882341745665267

`filter[A077685(n+1), A069513(#)]`
-/

namespace A045715.P11233882341745665267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A045715.P11233882341745665267

/-! ## A045715.P11722504800596409021

`filter[A077685(n+1), A324290(#)]`
-/

namespace A045715.P11722504800596409021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A045715.P11722504800596409021

/-! ## A045715.P3884500593760879647

`∩[A077685(n+1), A061345(n)]`
-/

namespace A045715.P3884500593760879647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P3884500593760879647

/-! ## A045715.P6443836909956393619

`∩[A000040(n+1), A077685(n+1)]`
-/

namespace A045715.P6443836909956393619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P6443836909956393619

/-! ## A045715.P5983075317006827432

`∩[A000430(n+1), A077685(n+1)]`
-/

namespace A045715.P5983075317006827432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P5983075317006827432

/-! ## A045715.P9866718806970340300

`∩[A000961(n+1), A077685(n+1)]`
-/

namespace A045715.P9866718806970340300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P9866718806970340300

/-! ## A045715.P2124239458508841331

`∩[A004139(n+1), A077685(n+1)]`
-/

namespace A045715.P2124239458508841331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P2124239458508841331

/-! ## A045715.P8556126550049944516

`∩[A006005(n+1), A077685(n+1)]`
-/

namespace A045715.P8556126550049944516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P8556126550049944516

/-! ## A045715.P16476273571563632617

`∩[A008578(n+1), A077685(n+1)]`
-/

namespace A045715.P16476273571563632617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P16476273571563632617

/-! ## A045715.P9171743007764817737

`∩[A009087(n+1), A077685(n+1)]`
-/

namespace A045715.P9171743007764817737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P9171743007764817737

/-! ## A045715.P1893150168764243802

`∩[A033946(n+1), A077685(n+1)]`
-/

namespace A045715.P1893150168764243802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P1893150168764243802

/-! ## A045715.P1146284382452049819

`∩[A045319(n+1), A077685(n+1)]`
-/

namespace A045715.P1146284382452049819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P1146284382452049819

/-! ## A045715.P12434574960307057859

`∩[A045344(n+1), A077685(n+1)]`
-/

namespace A045715.P12434574960307057859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P12434574960307057859

/-! ## A045715.P4031300156768018690

`∩[A046022(n+1), A077685(n+1)]`
-/

namespace A045715.P4031300156768018690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P4031300156768018690

/-! ## A045715.P6603929086443268041

`∩[A050376(n+1), A077685(n+1)]`
-/

namespace A045715.P6603929086443268041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P6603929086443268041

/-! ## A045715.P10330424798473488596

`∩[A053577(n+1), A077685(n+1)]`
-/

namespace A045715.P10330424798473488596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P10330424798473488596

/-! ## A045715.P15695703933277181701

`∩[A053813(n+1), A077685(n+1)]`
-/

namespace A045715.P15695703933277181701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045715.P15695703933277181701

/-!
# A045716: a(n) is the binary order (A029837) of the n-th primorial number, A002110(n).

The programs for A045716, the canonical program `A045716.P681620117723776804` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045716 has offset 1).

The definition of A045716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045716.P681620117723776804

`ceil(∑[log2(A000040(n+1))])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045716

/-- `ceil(∑[log2(A000040(n+1))])` -/
def P681620117723776804.Spec : Prop :=
  ∀ n, P681620117723776804.a n = A045716 (n + 1)

theorem P681620117723776804.correct : P681620117723776804.Spec := by
  intro n
  simp only [A045716, Nat.add_sub_cancel]

end A045716

/-! ## A045716.P2710994685089695915

`A058033(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A045716.P2710994685089695915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A058033 n + a (n - 1)

end

end A045716.P2710994685089695915

namespace A045716

/-- `A058033(n)+a(n-1)` -/
def P2710994685089695915.Spec : Prop :=
  ∀ n, P2710994685089695915.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P13654470940600198975

`ceil(∑[log2(A006093(n+1)+1)])`
-/

namespace A045716.P13654470940600198975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006093 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P13654470940600198975

namespace A045716

/-- `ceil(∑[log2(A006093(n+1)+1)])` -/
def P13654470940600198975.Spec : Prop :=
  ∀ n, P13654470940600198975.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P7176508286206261046

`ceil(∑[log2(A008864(n+1)-1)])`
-/

namespace A045716.P7176508286206261046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P7176508286206261046

namespace A045716

/-- `ceil(∑[log2(A008864(n+1)-1)])` -/
def P7176508286206261046.Spec : Prop :=
  ∀ n, P7176508286206261046.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P1763082985092423576

`ceil(∑[log2(A040976(n+1)+2)])`
-/

namespace A045716.P1763082985092423576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P1763082985092423576

namespace A045716

/-- `ceil(∑[log2(A040976(n+1)+2)])` -/
def P1763082985092423576.Spec : Prop :=
  ∀ n, P1763082985092423576.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P8248604247835946882

`ceil(∑[log2(A014689(n+1)+1+n)])`
-/

namespace A045716.P8248604247835946882
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014689 (n + 1) + 1 + (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P8248604247835946882

namespace A045716

/-- `ceil(∑[log2(A014689(n+1)+1+n)])` -/
def P8248604247835946882.Spec : Prop :=
  ∀ n, P8248604247835946882.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P14338377714878207141

`A057427(n)+A054850(n+1)`
-/

namespace A045716.P14338377714878207141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A054850 (n + 1)

end

end A045716.P14338377714878207141

namespace A045716

/-- `A057427(n)+A054850(n+1)` -/
def P14338377714878207141.Spec : Prop :=
  ∀ n, P14338377714878207141.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P9698435037633075195

`A054850(n+1)-A057428(n)`
-/

namespace A045716.P9698435037633075195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054850 (n + 1) - A057428 n

end

end A045716.P9698435037633075195

namespace A045716

/-- `A054850(n+1)-A057428(n)` -/
def P9698435037633075195.Spec : Prop :=
  ∀ n, P9698435037633075195.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P882068249257642187

`A054850(n+1)+A029837(n+1)/A070939(n)`
-/

namespace A045716.P882068249257642187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054850 (n + 1) : ℚ) + (A029837 (n + 1) : ℚ) / (A070939 n : ℚ)

end

end A045716.P882068249257642187

namespace A045716

/-- `A054850(n+1)+A029837(n+1)/A070939(n)` -/
def P882068249257642187.Spec : Prop :=
  ∀ n, P882068249257642187.a n = (A045716 (n + 1) : ℚ)

end A045716

/-! ## A045716.P2032298022235839893

`ceil(∑[log2(A008578(n+2))])`
-/

namespace A045716.P2032298022235839893
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P2032298022235839893

namespace A045716

/-- `ceil(∑[log2(A008578(n+2))])` -/
def P2032298022235839893.Spec : Prop :=
  ∀ n, P2032298022235839893.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P937650078633599149

`A054850(n+1)+A065475(A065475(n+1))-A065475(n+1)`
-/

namespace A045716.P937650078633599149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054850 (n + 1) + (A065475 (A065475 (n + 1)).toNat - A065475 (n + 1))

end

end A045716.P937650078633599149

namespace A045716

/-- `A054850(n+1)+A065475(A065475(n+1))-A065475(n+1)` -/
def P937650078633599149.Spec : Prop :=
  ∀ n, P937650078633599149.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P5983131635032795516

`ceil(∑[record[log2(A006530(n+2))]])`
-/

namespace A045716.P5983131635032795516
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P5983131635032795516

namespace A045716

/-- `ceil(∑[record[log2(A006530(n+2))]])` -/
def P5983131635032795516.Spec : Prop :=
  ∀ n, P5983131635032795516.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P5742082679743569432

`ceil(∑[record[log2(A020639(n+2))]])`
-/

namespace A045716.P5742082679743569432
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P5742082679743569432

namespace A045716

/-- `ceil(∑[record[log2(A020639(n+2))]])` -/
def P5742082679743569432.Spec : Prop :=
  ∀ n, P5742082679743569432.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P2321098092485188885

`ceil(∑[record[log2(A014963(n+2))]])`
-/

namespace A045716.P2321098092485188885
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P2321098092485188885

namespace A045716

/-- `ceil(∑[record[log2(A014963(n+2))]])` -/
def P2321098092485188885.Spec : Prop :=
  ∀ n, P2321098092485188885.a n = A045716 (n + 1)

end A045716

/-! ## A045716.P4929164622155827326

`A065475(A054850(n+1))`
-/

namespace A045716.P4929164622155827326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A054850 (n + 1)).toNat

end

end A045716.P4929164622155827326

namespace A045716

/-- `A065475(A054850(n+1))` -/
def P4929164622155827326.Spec : Prop :=
  ∀ n, P4929164622155827326.a n = A045716 (n + 1)

end A045716

/-!
# A045717: For each prime p take the sum of nonprimes < p.

The programs for A045717, the canonical program `A045717.P14974844081395038994` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045717 has offset 1).

The definition of A045717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045717.P6449176603605549983

`A079725(n+1)+1`
-/

namespace A045717.P6449176603605549983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 1) + 1

end

end A045717.P6449176603605549983

namespace A045717

/-- `A079725(n+1)+1` -/
def P6449176603605549983.Spec : Prop :=
  ∀ n, P6449176603605549983.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P7779281150559447769

`A054265(n)+a(n-1)` with `a(0)=1`
-/

namespace A045717.P7779281150559447769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054265 n + a (n - 1)

end

end A045717.P7779281150559447769

namespace A045717

/-- `A054265(n)+a(n-1)` -/
def P7779281150559447769.Spec : Prop :=
  ∀ n, P7779281150559447769.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P12540041444288307531

`∑[A054265(A028310(n))]+1`
-/

namespace A045717.P12540041444288307531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A045717.P12540041444288307531

namespace A045717

/-- `∑[A054265(A028310(n))]+1` -/
def P12540041444288307531.Spec : Prop :=
  ∀ n, P12540041444288307531.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P2873213228720218253

`A008837(n+1)-A007504(n)`
-/

namespace A045717.P2873213228720218253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - A007504 n

end

end A045717.P2873213228720218253

namespace A045717

/-- `A008837(n+1)-A007504(n)` -/
def P2873213228720218253.Spec : Prop :=
  ∀ n, P2873213228720218253.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P4862690861666366942

`∑[A138383(n)-A000040(n+1)]`
-/

namespace A045717.P4862690861666366942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045717.P4862690861666366942

namespace A045717

/-- `∑[A138383(n)-A000040(n+1)]` -/
def P4862690861666366942.Spec : Prop :=
  ∀ n, P4862690861666366942.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P16149534171349932572

`A034953(n+1)-A007504(n+1)`
-/

namespace A045717.P16149534171349932572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A007504 (n + 1)

end

end A045717.P16149534171349932572

namespace A045717

/-- `A034953(n+1)-A007504(n+1)` -/
def P16149534171349932572.Spec : Prop :=
  ∀ n, P16149534171349932572.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P7124305035146094157

`A072205(n+1)-A014284(n+1)`
-/

namespace A045717.P7124305035146094157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) - A014284 (n + 1)

end

end A045717.P7124305035146094157

namespace A045717

/-- `A072205(n+1)-A014284(n+1)` -/
def P7124305035146094157.Spec : Prop :=
  ∀ n, P7124305035146094157.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P3343328989494985430

`A036689(n+1)/2-A007504(n)`
-/

namespace A045717.P3343328989494985430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) / 2 - (A007504 n : ℚ)

end

end A045717.P3343328989494985430

namespace A045717

/-- `A036689(n+1)/2-A007504(n)` -/
def P3343328989494985430.Spec : Prop :=
  ∀ n, P3343328989494985430.a n = (A045717 (n + 1) : ℚ)

end A045717

/-! ## A045717.P13254232369486971541

`(A001248(n+1)-A061802(n))/2`
-/

namespace A045717.P13254232369486971541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - A061802 n : ℚ) / 2

end

end A045717.P13254232369486971541

namespace A045717

/-- `(A001248(n+1)-A061802(n))/2` -/
def P13254232369486971541.Spec : Prop :=
  ∀ n, P13254232369486971541.a n = (A045717 (n + 1) : ℚ)

end A045717

/-! ## A045717.P8784225062994423641

`C(A000040(n+1), 2)-A007504(n)`
-/

namespace A045717.P8784225062994423641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1)).toNat 2 : ℤ) - A007504 n

end

end A045717.P8784225062994423641

namespace A045717

/-- `C(A000040(n+1), 2)-A007504(n)` -/
def P8784225062994423641.Spec : Prop :=
  ∀ n, P8784225062994423641.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P7509151621537066199

`(A000040(n+1)²-A061802(n))/2`
-/

namespace A045717.P7509151621537066199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 - A061802 n : ℚ) / 2

end

end A045717.P7509151621537066199

namespace A045717

/-- `(A000040(n+1)²-A061802(n))/2` -/
def P7509151621537066199.Spec : Prop :=
  ∀ n, P7509151621537066199.a n = (A045717 (n + 1) : ℚ)

end A045717

/-! ## A045717.P14974844081395038994

`A034953(n+1)-∑[A000040(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045717

/-- `A034953(n+1)-∑[A000040(n+1)]` -/
def P14974844081395038994.Spec : Prop :=
  ∀ n, P14974844081395038994.a n = A045717 (n + 1)

theorem P14974844081395038994.correct : P14974844081395038994.Spec := by
  intro n
  simp only [A045717, Nat.add_sub_cancel]

end A045717

/-! ## A045717.P6298791973687287098

`A008837(n+1)+1-A014284(n+1)`
-/

namespace A045717.P6298791973687287098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + (1 - A014284 (n + 1))

end

end A045717.P6298791973687287098

namespace A045717

/-- `A008837(n+1)+1-A014284(n+1)` -/
def P6298791973687287098.Spec : Prop :=
  ∀ n, P6298791973687287098.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P1267334240533472137

`A072205(n+1)+1-A036439(n+1)`
-/

namespace A045717.P1267334240533472137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) + (1 - A036439 (n + 1))

end

end A045717.P1267334240533472137

namespace A045717

/-- `A072205(n+1)+1-A036439(n+1)` -/
def P1267334240533472137.Spec : Prop :=
  ∀ n, P1267334240533472137.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P14983483948979338405

`A008837(n+1)+1-∑[A008578(n+1)]`
-/

namespace A045717.P14983483948979338405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045717.P14983483948979338405

namespace A045717

/-- `A008837(n+1)+1-∑[A008578(n+1)]` -/
def P14983483948979338405.Spec : Prop :=
  ∀ n, P14983483948979338405.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P568966243136288654

`A034957(n+1)-(A339194(n+1)+A007504(n))`
-/

namespace A045717.P568966243136288654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) - (A339194 (n + 1) + A007504 n)

end

end A045717.P568966243136288654

namespace A045717

/-- `A034957(n+1)-(A339194(n+1)+A007504(n))` -/
def P568966243136288654.Spec : Prop :=
  ∀ n, P568966243136288654.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P11325558065006193503

`A034953(n+1)-∑[record[A006530(n+2)]]`
-/

namespace A045717.P11325558065006193503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045717.P11325558065006193503

namespace A045717

/-- `A034953(n+1)-∑[record[A006530(n+2)]]` -/
def P11325558065006193503.Spec : Prop :=
  ∀ n, P11325558065006193503.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P13075780707388341373

`A034953(n+1)-∑[record[A020639(n+2)]]`
-/

namespace A045717.P13075780707388341373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045717.P13075780707388341373

namespace A045717

/-- `A034953(n+1)-∑[record[A020639(n+2)]]` -/
def P13075780707388341373.Spec : Prop :=
  ∀ n, P13075780707388341373.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P11949174739005336511

`A000217(A006093(n+1))-A007504(n)`
-/

namespace A045717.P11949174739005336511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A006093 (n + 1)).toNat - A007504 n

end

end A045717.P11949174739005336511

namespace A045717

/-- `A000217(A006093(n+1))-A007504(n)` -/
def P11949174739005336511.Spec : Prop :=
  ∀ n, P11949174739005336511.a n = A045717 (n + 1)

end A045717

/-! ## A045717.P11746554846523435244

`A000217(A000040(n+1))-A007504(n+1)`
-/

namespace A045717.P11746554846523435244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - A007504 (n + 1)

end

end A045717.P11746554846523435244

namespace A045717

/-- `A000217(A000040(n+1))-A007504(n+1)` -/
def P11746554846523435244.Spec : Prop :=
  ∀ n, P11746554846523435244.a n = A045717 (n + 1)

end A045717

/-!
# A045718: Nearest neighbors of primes.

The programs for A045718, the canonical program `A045718.P15743282503320170960` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045718 has offset 0).

The definition of A045718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045718.P15743282503320170960

`∪[A006093(n+1), A028815(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045718

/-- `∪[A006093(n+1), A028815(n)]` -/
def P15743282503320170960.Spec : Prop :=
  ∀ n, (P15743282503320170960.a n : ℤ) = A045718 n

theorem P15743282503320170960.correct : P15743282503320170960.Spec := by
  intro n
  simp only [A045718]

end A045718

/-! ## A045718.P10440836364007803839

`∪[A068499(n+1), A028815(n)]`
-/

namespace A045718.P10440836364007803839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P10440836364007803839

namespace A045718

/-- `∪[A068499(n+1), A028815(n)]` -/
def P10440836364007803839.Spec : Prop :=
  ∀ n, (P10440836364007803839.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P1652850644364094649

`∪[A100317(n+1), A028815(n)]`
-/

namespace A045718.P1652850644364094649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P1652850644364094649

namespace A045718

/-- `∪[A100317(n+1), A028815(n)]` -/
def P1652850644364094649.Spec : Prop :=
  ∀ n, (P1652850644364094649.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P14765630962604493004

`∪[A165972(n+1), A028815(n)]`
-/

namespace A045718.P14765630962604493004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P14765630962604493004

namespace A045718

/-- `∪[A165972(n+1), A028815(n)]` -/
def P14765630962604493004.Spec : Prop :=
  ∀ n, (P14765630962604493004.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P1942234250703028561

`∪[record[A000010(n+1)], A028815(n)]`
-/

namespace A045718.P1942234250703028561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A045718.P1942234250703028561

namespace A045718

/-- `∪[record[A000010(n+1)], A028815(n)]` -/
def P1942234250703028561.Spec : Prop :=
  ∀ n, (P1942234250703028561.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P16809340482536621780

`∪[A006093(n+1), A008864(n+1)]`
-/

namespace A045718.P16809340482536621780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P16809340482536621780

namespace A045718

/-- `∪[A006093(n+1), A008864(n+1)]` -/
def P16809340482536621780.Spec : Prop :=
  ∀ n, (P16809340482536621780.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P17375207458085575309

`∪[A000040(n+1)-1, A028815(n)]`
-/

namespace A045718.P17375207458085575309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P17375207458085575309

namespace A045718

/-- `∪[A000040(n+1)-1, A028815(n)]` -/
def P17375207458085575309.Spec : Prop :=
  ∀ n, (P17375207458085575309.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P6396615846342532489

`∪[A000040(n+1)-1, A008864(n+1)]`
-/

namespace A045718.P6396615846342532489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P6396615846342532489

namespace A045718

/-- `∪[A000040(n+1)-1, A008864(n+1)]` -/
def P6396615846342532489.Spec : Prop :=
  ∀ n, (P6396615846342532489.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P17967132071059270083

`∪[A000040(n+1)+1, record[A000010(n+1)]]`
-/

namespace A045718.P17967132071059270083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P17967132071059270083

namespace A045718

/-- `∪[A000040(n+1)+1, record[A000010(n+1)]]` -/
def P17967132071059270083.Spec : Prop :=
  ∀ n, (P17967132071059270083.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P6851024107916699269

`∩[A210940(n+1), A004271(n)]`
-/

namespace A045718.P6851024107916699269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045718.P6851024107916699269

namespace A045718

/-- `∩[A210940(n+1), A004271(n)]` -/
def P6851024107916699269.Spec : Prop :=
  ∀ n, (P6851024107916699269.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P13131186734144992950

`eq[1, A051700(n)]`
-/

namespace A045718.P13131186734144992950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045718.P13131186734144992950

namespace A045718

/-- `eq[1, A051700(n)]` -/
def P13131186734144992950.Spec : Prop :=
  ∀ n, (P13131186734144992950.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P7131479449387050705

`eq[1, (n-A051698(n))²]`
-/

namespace A045718.P7131479449387050705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A051698 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045718.P7131479449387050705

namespace A045718

/-- `eq[1, (n-A051698(n))²]` -/
def P7131479449387050705.Spec : Prop :=
  ∀ n, (P7131479449387050705.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P8555347643666846366

`eq[1, A103689(n+1)]+1`
-/

namespace A045718.P8555347643666846366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045718.P8555347643666846366

namespace A045718

/-- `eq[1, A103689(n+1)]+1` -/
def P8555347643666846366.Spec : Prop :=
  ∀ n, (P8555347643666846366.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P2043336738627827127

`record[(n+1)/A051700(n+1)]`
-/

namespace A045718.P2043336738627827127
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051700 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045718.P2043336738627827127

namespace A045718

/-- `record[(n+1)/A051700(n+1)]` -/
def P2043336738627827127.Spec : Prop :=
  ∀ n, P2043336738627827127.a n = (A045718 n : ℚ)

end A045718

/-! ## A045718.P6636501999014282635

`lt[abs(∑{p}[n-1, (n+1)/#]²-1), A014963(n+1)²]`
-/

namespace A045718.P6636501999014282635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(∑ p ∈ Nat.primeFactors (f2 n).natAbs, (n + 1 : ℚ) / (p : ℚ)) ^ 2 - 1|

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A045718.P6636501999014282635

namespace A045718

/-- `lt[abs(∑{p}[n-1, (n+1)/#]²-1), A014963(n+1)²]` -/
def P6636501999014282635.Spec : Prop :=
  ∀ n, (P6636501999014282635.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P17198861700422040768

`eq[A051699(n), A267537(n)]`
-/

namespace A045718.P17198861700422040768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045718.P17198861700422040768

namespace A045718

/-- `eq[A051699(n), A267537(n)]` -/
def P17198861700422040768.Spec : Prop :=
  ∀ n, (P17198861700422040768.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P2812817276595129395

`record[gcd(n, A004524(A051700(n)+1))]`
-/

namespace A045718.P2812817276595129395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004524 (A051700 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045718.P2812817276595129395

namespace A045718

/-- `record[gcd(n, A004524(A051700(n)+1))]` -/
def P2812817276595129395.Spec : Prop :=
  ∀ n, (P2812817276595129395.a n : ℤ) = A045718 n

end A045718

/-! ## A045718.P1046614478844623660

`lt[A051700(n), A000005(A051697(n))]`
-/

namespace A045718.P1046614478844623660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045718.P1046614478844623660

namespace A045718

/-- `lt[A051700(n), A000005(A051697(n))]` -/
def P1046614478844623660.Spec : Prop :=
  ∀ n, (P1046614478844623660.a n : ℤ) = A045718 n

end A045718

/-!
# A045719: Number of primes embedded in n-th prime.

The programs for A045719, there is no canonical definition to state claims against.
-/

/-! ## A045719.P2499760540360600561

`A039992(n+1)-1`
-/

namespace A045719.P2499760540360600561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039992 (n + 1) - 1

end

end A045719.P2499760540360600561

/-! ## A045719.P3919281543636670380

`A039993(Δ[A007504(n)])-1`
-/

namespace A045719.P3919281543636670380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (n + 1) - f1 n).toNat - 1

end

end A045719.P3919281543636670380

/-! ## A045719.P3263528512333695851

`A039993(record[A051698(n)])-1`
-/

namespace A045719.P3263528512333695851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A045719.P3263528512333695851

/-! ## A045719.P791809408183988470

`A039993(A000040(n+1))-1`
-/

namespace A045719.P791809408183988470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A000040 (n + 1)).toNat - 1

end

end A045719.P791809408183988470

/-! ## A045719.P6495731773825181605

`A039993(A004087(n+1))-1`
-/

namespace A045719.P6495731773825181605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A004087 (n + 1)).toNat - 1

end

end A045719.P6495731773825181605

/-! ## A045719.P15895224718402149725

`A039993(A028906(n+1))-1`
-/

namespace A045719.P15895224718402149725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A028906 (n + 1)).toNat - 1

end

end A045719.P15895224718402149725

/-! ## A045719.P5716067369927373919

`A039993(A008578(n+2))-1`
-/

namespace A045719.P5716067369927373919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A008578 (n + 2)).toNat - 1

end

end A045719.P5716067369927373919

/-! ## A045719.P3144269241371682144

`A039993(A182986(n+2))-1`
-/

namespace A045719.P3144269241371682144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A182986 (n + 2)).toNat - 1

end

end A045719.P3144269241371682144

/-! ## A045719.P7299779899265166082

`A039993(eq[1, A003415(n)])-1`
-/

namespace A045719.P7299779899265166082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A045719.P7299779899265166082

/-! ## A045719.P381083598931850455

`A039993(sqrt(A001248(n+1)))-1`
-/

namespace A045719.P381083598931850455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A045719.P381083598931850455

/-! ## A045719.P13128447972081112565

`A039993(record[A006530(n+2)])-1`
-/

namespace A045719.P13128447972081112565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A045719.P13128447972081112565

/-! ## A045719.P16516861763396979278

`A039993(record[A014963(n+2)])-1`
-/

namespace A045719.P16516861763396979278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A045719.P16516861763396979278

/-! ## A045719.P10265108207434143811

`A039993(record[A020639(n+2)])-1`
-/

namespace A045719.P10265108207434143811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A045719.P10265108207434143811

/-! ## A045719.P2226892980703844670

`A039993(A101989(n+1))-1`
-/

namespace A045719.P2226892980703844670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (A101989 (n + 1)).toNat - 1

end

end A045719.P2226892980703844670

/-! ## A045719.P5582509256074672924

`A083800(n+1)%A039992(n+1)`
-/

namespace A045719.P5582509256074672924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A039992 (n + 1))

end

end A045719.P5582509256074672924

/-! ## A045719.P14577434173443362409

`A070198(n)%A039992(n+1)`
-/

namespace A045719.P14577434173443362409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A039992 (n + 1))

end

end A045719.P14577434173443362409

/-! ## A045719.P3143743129039253917

`A079782(n+1)%A039992(n+1)`
-/

namespace A045719.P3143743129039253917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A039992 (n + 1))

end

end A045719.P3143743129039253917

/-! ## A045719.P4226407281096737309

`A083685(n+1)%A039992(n+1)`
-/

namespace A045719.P4226407281096737309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A039992 (n + 1))

end

end A045719.P4226407281096737309

/-! ## A045719.P15481212663005326084

`A121934(n+1)%A039992(n+1)`
-/

namespace A045719.P15481212663005326084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A039992 (n + 1))

end

end A045719.P15481212663005326084

/-! ## A045719.P12594529784421551965

`A030494(n+1)%A039992(n+1)`
-/

namespace A045719.P12594529784421551965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A039992 (n + 1))

end

end A045719.P12594529784421551965

/-!
# A045720: 3-fold convolution of A001700(n), n >= 0.

The programs for A045720, the canonical program `A045720.P7296829623799460313` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045720 has offset 0).

The definition of A045720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045720.P14351178087007771259

`A191520(2*(n+3))`
-/

namespace A045720.P14351178087007771259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191520 (2 * (n + 3))

end

end A045720.P14351178087007771259

namespace A045720

/-- `A191520(2*(n+3))` -/
def P14351178087007771259.Spec : Prop :=
  ∀ n, P14351178087007771259.a n = A045720 n

end A045720

/-! ## A045720.P6510553490577441824

`A191520(Δ[(n+3)²])/2`
-/

namespace A045720.P6510553490577441824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A045720.P6510553490577441824

namespace A045720

/-- `A191520(Δ[(n+3)²])/2` -/
def P6510553490577441824.Spec : Prop :=
  ∀ n, P6510553490577441824.a n = (A045720 n : ℚ)

end A045720

/-! ## A045720.P3656684394704987620

`2*(2*n+7)/(n+3)*a(n-1)+3/(n+3)*A008549(n+1)` with `a(0)=1`
-/

namespace A045720.P3656684394704987620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n + 7 : ℚ) / (n + 3 : ℚ)) * a (n - 1) + 3 / (n + 3 : ℚ) * (A008549 (n + 1) : ℚ)

end

end A045720.P3656684394704987620

namespace A045720

/-- `2*(2*n+7)/(n+3)*a(n-1)+3/(n+3)*A008549(n+1)` -/
def P3656684394704987620.Spec : Prop :=
  ∀ n, P3656684394704987620.a n = (A045720 n : ℚ)

end A045720

/-! ## A045720.P7296829623799460313

`A029760(n+1)-A000531(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045720

/-- `A029760(n+1)-A000531(n+2)` -/
def P7296829623799460313.Spec : Prop :=
  ∀ n, P7296829623799460313.a n = A045720 n

theorem P7296829623799460313.correct : P7296829623799460313.Spec := by
  intro n
  simp only [A045720]

end A045720

/-! ## A045720.P15582592715540341370

`A000531(n+2)-A008549(n+2)`
-/

namespace A045720.P15582592715540341370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 2) - A008549 (n + 2)

end

end A045720.P15582592715540341370

namespace A045720

/-- `A000531(n+2)-A008549(n+2)` -/
def P15582592715540341370.Spec : Prop :=
  ∀ n, P15582592715540341370.a n = A045720 n

end A045720

/-! ## A045720.P193967661907285560

`A258431(n+3)-A000346(n+2)`
-/

namespace A045720.P193967661907285560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258431 (n + 3) - A000346 (n + 2)

end

end A045720.P193967661907285560

namespace A045720

/-- `A258431(n+3)-A000346(n+2)` -/
def P193967661907285560.Spec : Prop :=
  ∀ n, P193967661907285560.a n = A045720 n

end A045720

/-! ## A045720.P6023958003385283991

`A029760(n+1)-(A029760(n)+A002457(n+1))`
-/

namespace A045720.P6023958003385283991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029760 (n + 1) - (A029760 n + A002457 (n + 1))

end

end A045720.P6023958003385283991

namespace A045720

/-- `A029760(n+1)-(A029760(n)+A002457(n+1))` -/
def P6023958003385283991.Spec : Prop :=
  ∀ n, P6023958003385283991.a n = A045720 n

end A045720

/-! ## A045720.P12585580378231471354

`A035324(∑[n+2]+4)`
-/

namespace A045720.P12585580378231471354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A045720.P12585580378231471354

namespace A045720

/-- `A035324(∑[n+2]+4)` -/
def P12585580378231471354.Spec : Prop :=
  ∀ n, P12585580378231471354.a n = A045720 n

end A045720

/-! ## A045720.P10553128758113827321

`A106194(A099776(n+2)+1)`
-/

namespace A045720.P10553128758113827321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106194 (A099776 (n + 2) + 1).toNat

end

end A045720.P10553128758113827321

namespace A045720

/-- `A106194(A099776(n+2)+1)` -/
def P10553128758113827321.Spec : Prop :=
  ∀ n, P10553128758113827321.a n = A045720 n

end A045720

/-! ## A045720.P9474280772939030162

`A193605(A268581(n+1))`
-/

namespace A045720.P9474280772939030162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A268581 (n + 1)).toNat

end

end A045720.P9474280772939030162

namespace A045720

/-- `A193605(A268581(n+1))` -/
def P9474280772939030162.Spec : Prop :=
  ∀ n, P9474280772939030162.a n = A045720 n

end A045720

/-!
# A045721: a(n) = binomial(3*n+1,n).

The programs for A045721, the canonical program `A045721.P9694098104013051424` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045721 has offset 0).

The definition of A045721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045721.P5070370235427457521

`A144484(∑[n])`
-/

namespace A045721.P5070370235427457521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045721.P5070370235427457521

namespace A045721

/-- `A144484(∑[n])` -/
def P5070370235427457521.Spec : Prop :=
  ∀ n, P5070370235427457521.a n = A045721 n

end A045721

/-! ## A045721.P14784043877663770464

`record[A144484(n)]`
-/

namespace A045721.P14784043877663770464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045721.P14784043877663770464

namespace A045721

/-- `record[A144484(n)]` -/
def P14784043877663770464.Spec : Prop :=
  ∀ n, P14784043877663770464.a n = A045721 n

end A045721

/-! ## A045721.P3416278661878675327

`A099578(2*n)`
-/

namespace A045721.P3416278661878675327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n)

end

end A045721.P3416278661878675327

namespace A045721

/-- `A099578(2*n)` -/
def P3416278661878675327.Spec : Prop :=
  ∀ n, P3416278661878675327.a n = A045721 n

end A045721

/-! ## A045721.P5483015044641467770

`A065942(Δ[n²])`
-/

namespace A045721.P5483015044641467770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045721.P5483015044641467770

namespace A045721

/-- `A065942(Δ[n²])` -/
def P5483015044641467770.Spec : Prop :=
  ∀ n, P5483015044641467770.a n = A045721 n

end A045721

/-! ## A045721.P9694098104013051424

`A051033(3*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045721

/-- `A051033(3*n+1)` -/
def P9694098104013051424.Spec : Prop :=
  ∀ n, P9694098104013051424.a n = A045721 n

theorem P9694098104013051424.correct : P9694098104013051424.Spec := by
  intro n
  simp only [A045721]

end A045721

/-! ## A045721.P10122466417549861575

`(n+1)*A006013(n)`
-/

namespace A045721.P10122466417549861575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006013 n

end

end A045721.P10122466417549861575

namespace A045721

/-- `(n+1)*A006013(n)` -/
def P10122466417549861575.Spec : Prop :=
  ∀ n, P10122466417549861575.a n = A045721 n

end A045721

/-! ## A045721.P14578363290561255855

`(n+1)*A073148(∑[n])`
-/

namespace A045721.P14578363290561255855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045721.P14578363290561255855

namespace A045721

/-- `(n+1)*A073148(∑[n])` -/
def P14578363290561255855.Spec : Prop :=
  ∀ n, P14578363290561255855.a n = A045721 n

end A045721

/-! ## A045721.P7560587169351628854

`(3*n+1)*A001764(n)`
-/

namespace A045721.P7560587169351628854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A001764 n

end

end A045721.P7560587169351628854

namespace A045721

/-- `(3*n+1)*A001764(n)` -/
def P7560587169351628854.Spec : Prop :=
  ∀ n, P7560587169351628854.a n = A045721 n

end A045721

/-! ## A045721.P6479631456239559632

`(n+1)*A047749(Δ[n²])`
-/

namespace A045721.P6479631456239559632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045721.P6479631456239559632

namespace A045721

/-- `(n+1)*A047749(Δ[n²])` -/
def P6479631456239559632.Spec : Prop :=
  ∀ n, P6479631456239559632.a n = A045721 n

end A045721

/-! ## A045721.P4910852258232171408

`(n+1)*A134565(Δ[n²])`
-/

namespace A045721.P4910852258232171408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045721.P4910852258232171408

namespace A045721

/-- `(n+1)*A134565(Δ[n²])` -/
def P4910852258232171408.Spec : Prop :=
  ∀ n, P4910852258232171408.a n = A045721 n

end A045721

/-! ## A045721.P4431117699493043332

`(n+1)*record[A134565(n+1)]`
-/

namespace A045721.P4431117699493043332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045721.P4431117699493043332

namespace A045721

/-- `(n+1)*record[A134565(n+1)]` -/
def P4431117699493043332.Spec : Prop :=
  ∀ n, P4431117699493043332.a n = A045721 n

end A045721

/-! ## A045721.P16787009859525597428

`(n+1)/3*A024485(n+1)`
-/

namespace A045721.P16787009859525597428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A024485 (n + 1) : ℚ)

end

end A045721.P16787009859525597428

namespace A045721

/-- `(n+1)/3*A024485(n+1)` -/
def P16787009859525597428.Spec : Prop :=
  ∀ n, P16787009859525597428.a n = (A045721 n : ℚ)

end A045721

/-! ## A045721.P12943330704976003143

`lcm(n+1, A065942(2*n+1))`
-/

namespace A045721.P12943330704976003143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A065942 (2 * n + 1))

end

end A045721.P12943330704976003143

namespace A045721

/-- `lcm(n+1, A065942(2*n+1))` -/
def P12943330704976003143.Spec : Prop :=
  ∀ n, (P12943330704976003143.a n : ℤ) = A045721 n

end A045721

/-! ## A045721.P14665400813532560949

`A001764(n)*A016777(n)`
-/

namespace A045721.P14665400813532560949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A016777 n

end

end A045721.P14665400813532560949

namespace A045721

/-- `A001764(n)*A016777(n)` -/
def P14665400813532560949.Spec : Prop :=
  ∀ n, P14665400813532560949.a n = A045721 n

end A045721

/-! ## A045721.P16944353253128087071

`(n+1)*A047773(A016957(n))`
-/

namespace A045721.P16944353253128087071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047773 (A016957 n).toNat

end

end A045721.P16944353253128087071

namespace A045721

/-- `(n+1)*A047773(A016957(n))` -/
def P16944353253128087071.Spec : Prop :=
  ∀ n, P16944353253128087071.a n = A045721 n

end A045721

/-! ## A045721.P13262388768347544469

`(n+1)*A047764(A017617(n))`
-/

namespace A045721.P13262388768347544469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047764 (A017617 n).toNat

end

end A045721.P13262388768347544469

namespace A045721

/-- `(n+1)*A047764(A017617(n))` -/
def P13262388768347544469.Spec : Prop :=
  ∀ n, P13262388768347544469.a n = A045721 n

end A045721

/-! ## A045721.P4034486967053638275

`(n+1)*A071948(A000096(n))`
-/

namespace A045721.P4034486967053638275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071948 (A000096 n).toNat

end

end A045721.P4034486967053638275

namespace A045721

/-- `(n+1)*A071948(A000096(n))` -/
def P4034486967053638275.Spec : Prop :=
  ∀ n, P4034486967053638275.a n = A045721 n

end A045721

/-! ## A045721.P15865430571664987842

`A005809(n)+n*A001764(n)`
-/

namespace A045721.P15865430571664987842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n + (n : ℤ) * A001764 n

end

end A045721.P15865430571664987842

namespace A045721

/-- `A005809(n)+n*A001764(n)` -/
def P15865430571664987842.Spec : Prop :=
  ∀ n, P15865430571664987842.a n = A045721 n

end A045721

/-! ## A045721.P11926096760719413401

`A127534(n+1)+A001764(n+1)`
-/

namespace A045721.P11926096760719413401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127534 (n + 1) + A001764 (n + 1)

end

end A045721.P11926096760719413401

namespace A045721

/-- `A127534(n+1)+A001764(n+1)` -/
def P11926096760719413401.Spec : Prop :=
  ∀ n, P11926096760719413401.a n = A045721 n

end A045721

/-! ## A045721.P14086804977186277823

`A264772(∑[n+1]+1)`
-/

namespace A045721.P14086804977186277823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045721.P14086804977186277823

namespace A045721

/-- `A264772(∑[n+1]+1)` -/
def P14086804977186277823.Spec : Prop :=
  ∀ n, P14086804977186277823.a n = A045721 n

end A045721

/-!
# A045722: Number of border edges in all noncrossing rooted trees on n nodes.

The programs for A045722, the canonical program `A045722.P9382885105584645516` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045722 has offset 1).

The definition of A045722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045722.P15578911686710074197

`gcd(2, 4^n)*A026004(n)`
-/

namespace A045722.P15578911686710074197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (4 ^ n) : ℤ) * A026004 n

end

end A045722.P15578911686710074197

namespace A045722

/-- `gcd(2, 4^n)*A026004(n)` -/
def P15578911686710074197.Spec : Prop :=
  ∀ n, P15578911686710074197.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P8395068328666051275

`(ceil(sqrt(∑[2*n]))+1)*A006013(n)`
-/

namespace A045722.P8395068328666051275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 1) * A006013 n

end

end A045722.P8395068328666051275

namespace A045722

/-- `(ceil(sqrt(∑[2*n]))+1)*A006013(n)` -/
def P8395068328666051275.Spec : Prop :=
  ∀ n, P8395068328666051275.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P1879932508268766377

`A026004(n)*A269735(2*n+1)`
-/

namespace A045722.P1879932508268766377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026004 n * A269735 (2 * n + 1)

end

end A045722.P1879932508268766377

namespace A045722

/-- `A026004(n)*A269735(2*n+1)` -/
def P1879932508268766377.Spec : Prop :=
  ∀ n, P1879932508268766377.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P16611905834741979227

`(A036453(n+1)+n)*A047749(2*n+1)`
-/

namespace A045722.P16611905834741979227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) + (n : ℤ)) * A047749 (2 * n + 1)

end

end A045722.P16611905834741979227

namespace A045722

/-- `(A036453(n+1)+n)*A047749(2*n+1)` -/
def P16611905834741979227.Spec : Prop :=
  ∀ n, P16611905834741979227.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P1188389067542137156

`(A280193(2*n)+n)*A047749(2*n+1)`
-/

namespace A045722.P1188389067542137156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280193 (2 * n) + (n : ℤ)) * A047749 (2 * n + 1)

end

end A045722.P1188389067542137156

namespace A045722

/-- `(A280193(2*n)+n)*A047749(2*n+1)` -/
def P1188389067542137156.Spec : Prop :=
  ∀ n, P1188389067542137156.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P3955025062987308806

`(A036452(2*n+1)+n)*A047749(2*n+1)`
-/

namespace A045722.P3955025062987308806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036452 (2 * n + 1) + (n : ℤ)) * A047749 (2 * n + 1)

end

end A045722.P3955025062987308806

namespace A045722

/-- `(A036452(2*n+1)+n)*A047749(2*n+1)` -/
def P3955025062987308806.Spec : Prop :=
  ∀ n, P3955025062987308806.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P12466078779865945376

`(A065475(2*n+1)-n)*A047749(2*n+1)`
-/

namespace A045722.P12466078779865945376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (2 * n + 1) - (n : ℤ)) * A047749 (2 * n + 1)

end

end A045722.P12466078779865945376

namespace A045722

/-- `(A065475(2*n+1)-n)*A047749(2*n+1)` -/
def P12466078779865945376.Spec : Prop :=
  ∀ n, P12466078779865945376.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P287346669643551864

`A006013(n)*A052938(A004273(n))`
-/

namespace A045722.P287346669643551864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A052938 (A004273 n).toNat

end

end A045722.P287346669643551864

namespace A045722

/-- `A006013(n)*A052938(A004273(n))` -/
def P287346669643551864.Spec : Prop :=
  ∀ n, P287346669643551864.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P9382885105584645516

`A006013(n)*A008619(A103517(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045722

/-- `A006013(n)*A008619(A103517(n))` -/
def P9382885105584645516.Spec : Prop :=
  ∀ n, P9382885105584645516.a n = A045722 (n + 1)

theorem P9382885105584645516.correct : P9382885105584645516.Spec := by
  intro n
  simp only [A045722, Nat.add_sub_cancel]

end A045722

/-! ## A045722.P1401539111013451267

`A006013(n)*A049084(p?[A163985(n)])`
-/

namespace A045722.P1401539111013451267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n * A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A045722.P1401539111013451267

namespace A045722

/-- `A006013(n)*A049084(p?[A163985(n)])` -/
def P1401539111013451267.Spec : Prop :=
  ∀ n, P1401539111013451267.a n = A045722 (n + 1)

end A045722

/-! ## A045722.P14712620721159941011

`A045721(n)+A006013(n)%A005809(n)`
-/

namespace A045722.P14712620721159941011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + Int.tmod (A006013 n) (A005809 n)

end

end A045722.P14712620721159941011

namespace A045722

/-- `A045721(n)+A006013(n)%A005809(n)` -/
def P14712620721159941011.Spec : Prop :=
  ∀ n, P14712620721159941011.a n = A045722 (n + 1)

end A045722

/-!
# A045723: Number of configurations, excluding reflections and black-white interchanges, of n black and n white beads on a string.

The programs for A045723, the canonical program `A045723.P17563774538173166347` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045723 has offset 0).

The definition of A045723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045723.P16147836304609344550

`∑{d}[round(sqrt(n²+1)), A045631(#)]`
-/

namespace A045723.P16147836304609344550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045631 d

end

end A045723.P16147836304609344550

namespace A045723

/-- `∑{d}[round(sqrt(n²+1)), A045631(#)]` -/
def P16147836304609344550.Spec : Prop :=
  ∀ n, P16147836304609344550.a n = A045723 n

end A045723

/-! ## A045723.P13966417262315725140

`A042971(round((1/9)^(n/5))+n)+A027306(n)`
-/

namespace A045723.P13966417262315725140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042971 (SequenceMachineLib.roundAway (((1 : ℚ) / 9 : ℝ) ^ ((n : ℚ) / 5 : ℝ)) + (n : ℤ)).toNat + A027306 n

end

end A045723.P13966417262315725140

namespace A045723

/-- `A042971(round((1/9)^(n/5))+n)+A027306(n)` -/
def P13966417262315725140.Spec : Prop :=
  ∀ n, P13966417262315725140.a n = A045723 n

end A045723

/-! ## A045723.P17563774538173166347

`A042971(A028310(n))+2^n-A058622(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045723

/-- `A042971(A028310(n))+2^n-A058622(n)` -/
def P17563774538173166347.Spec : Prop :=
  ∀ n, P17563774538173166347.a n = A045723 n

theorem P17563774538173166347.correct : P17563774538173166347.Spec := by
  intro n
  simp only [A045723]

end A045723

/-! ## A045723.P8517101232413661772

`A042971(A028310(n))+A000225(n)-A058622(n)+1`
-/

namespace A045723.P8517101232413661772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042971 (A028310 n).toNat + (A000225 n - A058622 n + 1)

end

end A045723.P8517101232413661772

namespace A045723

/-- `A042971(A028310(n))+A000225(n)-A058622(n)+1` -/
def P8517101232413661772.Spec : Prop :=
  ∀ n, P8517101232413661772.a n = A045723 n

end A045723

/-! ## A045723.P262483801058785723

`(A032123(n)+A011782(n))/2`
-/

namespace A045723.P262483801058785723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032123 n + A011782 n : ℚ) / 2

end

end A045723.P262483801058785723

namespace A045723

/-- `(A032123(n)+A011782(n))/2` -/
def P262483801058785723.Spec : Prop :=
  ∀ n, P262483801058785723.a n = (A045723 n : ℚ)

end A045723

/-! ## A045723.P1211061999056351071

`(A088218(n)+A027306(n))/2`
-/

namespace A045723.P1211061999056351071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 n + A027306 n : ℚ) / 2

end

end A045723.P1211061999056351071

namespace A045723

/-- `(A088218(n)+A027306(n))/2` -/
def P1211061999056351071.Spec : Prop :=
  ∀ n, P1211061999056351071.a n = (A045723 n : ℚ)

end A045723

/-! ## A045723.P9121016207860518349

`A088218(n)-A042971(A028310(n))`
-/

namespace A045723.P9121016207860518349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A042971 (A028310 n).toNat

end

end A045723.P9121016207860518349

namespace A045723

/-- `A088218(n)-A042971(A028310(n))` -/
def P9121016207860518349.Spec : Prop :=
  ∀ n, P9121016207860518349.a n = A045723 n

end A045723

/-! ## A045723.P13967241595175774672

`A391786(∑[n]+n)`
-/

namespace A045723.P13967241595175774672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391786 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A045723.P13967241595175774672

namespace A045723

/-- `A391786(∑[n]+n)` -/
def P13967241595175774672.Spec : Prop :=
  ∀ n, P13967241595175774672.a n = A045723 n

end A045723

/-!
# A045724: Convolution of Catalan numbers A000108 with A020918.

The programs for A045724, the canonical program `A045724.P14771865039815941813` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045724 has offset 0).

The definition of A045724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045724.P14771865039815941813

`2*A020918(n)-A042941(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045724

/-- `2*A020918(n)-A042941(n)` -/
def P14771865039815941813.Spec : Prop :=
  ∀ n, P14771865039815941813.a n = A045724 n

theorem P14771865039815941813.correct : P14771865039815941813.Spec := by
  intro n
  simp only [A045724]

end A045724

/-! ## A045724.P3043292495878868639

`(A041005(n)+A041001(n))/2`
-/

namespace A045724.P3043292495878868639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041005 n + A041001 n : ℚ) / 2

end

end A045724.P3043292495878868639

namespace A045724

/-- `(A041005(n)+A041001(n))/2` -/
def P3043292495878868639.Spec : Prop :=
  ∀ n, P3043292495878868639.a n = (A045724 n : ℚ)

end A045724

/-! ## A045724.P1561209477206056671

`(A020918(n+1)-A038845(n+1))/2`
-/

namespace A045724.P1561209477206056671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020918 (n + 1) - A038845 (n + 1) : ℚ) / 2

end

end A045724.P1561209477206056671

namespace A045724

/-- `(A020918(n+1)-A038845(n+1))/2` -/
def P1561209477206056671.Spec : Prop :=
  ∀ n, P1561209477206056671.a n = (A045724 n : ℚ)

end A045724

/-! ## A045724.P14219647989455992682

`A038846(n)+A038846(n)-A042985(n)`
-/

namespace A045724.P14219647989455992682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038846 n + (A038846 n - A042985 n)

end

end A045724.P14219647989455992682

namespace A045724

/-- `A038846(n)+A038846(n)-A042985(n)` -/
def P14219647989455992682.Spec : Prop :=
  ∀ n, P14219647989455992682.a n = A045724 n

end A045724

/-! ## A045724.P7641710026508993107

`2*A038846(n)-A042985(n)`
-/

namespace A045724.P7641710026508993107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038846 n - A042985 n

end

end A045724.P7641710026508993107

namespace A045724

/-- `2*A038846(n)-A042985(n)` -/
def P7641710026508993107.Spec : Prop :=
  ∀ n, P7641710026508993107.a n = A045724 n

end A045724

/-! ## A045724.P10231236666148247723

`A046658(A145018(n+4))`
-/

namespace A045724.P10231236666148247723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A145018 (n + 4)).toNat

end

end A045724.P10231236666148247723

namespace A045724

/-- `A046658(A145018(n+4))` -/
def P10231236666148247723.Spec : Prop :=
  ∀ n, P10231236666148247723.a n = A045724 n

end A045724

/-! ## A045724.P17183420084617790759

`A046658(A167614(n+2)+1)`
-/

namespace A045724.P17183420084617790759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A167614 (n + 2) + 1).toNat

end

end A045724.P17183420084617790759

namespace A045724

/-- `A046658(A167614(n+2)+1)` -/
def P17183420084617790759.Spec : Prop :=
  ∀ n, P17183420084617790759.a n = A045724 n

end A045724

/-! ## A045724.P17903828478522752905

`A046658(A167499(n+2)-1)`
-/

namespace A045724.P17903828478522752905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A167499 (n + 2) - 1).toNat

end

end A045724.P17903828478522752905

namespace A045724

/-- `A046658(A167499(n+2)-1)` -/
def P17903828478522752905.Spec : Prop :=
  ∀ n, P17903828478522752905.a n = A045724 n

end A045724

/-! ## A045724.P1200981248390160166

`A046658(A000217(n+3)+4)`
-/

namespace A045724.P1200981248390160166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046658 (A000217 (n + 3) + 4).toNat

end

end A045724.P1200981248390160166

namespace A045724

/-- `A046658(A000217(n+3)+4)` -/
def P1200981248390160166.Spec : Prop :=
  ∀ n, P1200981248390160166.a n = A045724 n

end A045724

/-!
# A045725: Fibonacci numbers having initial digit '1'.

The programs for A045725, the canonical program `A045725.P13366882839411925248` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045725 has offset 1).

The definition of A045725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045725.P13366882839411925248

`A000045(A105501(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045725

/-- `A000045(A105501(n+2))` -/
def P13366882839411925248.Spec : Prop :=
  ∀ n, P13366882839411925248.a n = A045725 (n + 1)

theorem P13366882839411925248.correct : P13366882839411925248.Spec := by
  intro n
  simp only [A045725, Nat.add_sub_cancel]

end A045725

/-! ## A045725.P5607436992923205644

`record[A000045(A105501(A158416(n)))]`
-/

namespace A045725.P5607436992923205644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105501 (A158416 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045725.P5607436992923205644

namespace A045725

/-- `record[A000045(A105501(A158416(n)))]` -/
def P5607436992923205644.Spec : Prop :=
  ∀ n, P5607436992923205644.a n = A045725 (n + 1)

end A045725

/-! ## A045725.P15176664761163342846

`A000045(eq[A008963(n), A060576(n)])`
-/

namespace A045725.P15176664761163342846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045725.P15176664761163342846

namespace A045725

/-- `A000045(eq[A008963(n), A060576(n)])` -/
def P15176664761163342846.Spec : Prop :=
  ∀ n, P15176664761163342846.a n = A045725 (n + 1)

end A045725

/-! ## A045725.P9676653361075256281

`A000045(eq[A008963(n), A141044(n)])`
-/

namespace A045725.P9676653361075256281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045725.P9676653361075256281

namespace A045725

/-- `A000045(eq[A008963(n), A141044(n)])` -/
def P9676653361075256281.Spec : Prop :=
  ∀ n, P9676653361075256281.a n = A045725 (n + 1)

end A045725

/-! ## A045725.P18250097393441122489

`A000045(eq[A008963(n), A267587(n)])`
-/

namespace A045725.P18250097393441122489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045725.P18250097393441122489

namespace A045725

/-- `A000045(eq[A008963(n), A267587(n)])` -/
def P18250097393441122489.Spec : Prop :=
  ∀ n, P18250097393441122489.a n = A045725 (n + 1)

end A045725

/-!
# A045726: Fibonacci numbers having initial digit '2'.

The programs for A045726, there is no canonical definition to state claims against.
-/

/-! ## A045726.P12796290311556313314

`A000045(A105502(n+1))`
-/

namespace A045726.P12796290311556313314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105502 (n + 1)).toNat

end

end A045726.P12796290311556313314

/-! ## A045726.P4447619283645360203

`A000045(eq[2, A008963(n)])`
-/

namespace A045726.P4447619283645360203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045726.P4447619283645360203

/-! ## A045726.P15124881240556206696

`A020695(A105502(n+1)-3)`
-/

namespace A045726.P15124881240556206696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A105502 (n + 1) - 3).toNat

end

end A045726.P15124881240556206696

/-! ## A045726.P1824680660103521902

`A053602(2*A105502(n+1))`
-/

namespace A045726.P1824680660103521902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105502 (n + 1)).toNat

end

end A045726.P1824680660103521902

/-! ## A045726.P12995047454641067744

`A000045(eq[2, A004091(n)%10])`
-/

namespace A045726.P12995047454641067744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004091 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045726.P12995047454641067744

/-!
# A045727: Fibonacci numbers having initial digit '3'.

The programs for A045727, there is no canonical definition to state claims against.
-/

/-! ## A045727.P7312093220690480351

`A000045(A105503(n+1))`
-/

namespace A045727.P7312093220690480351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105503 (n + 1)).toNat

end

end A045727.P7312093220690480351

/-! ## A045727.P5524308968363910797

`A000045(eq[3, A008963(n)])`
-/

namespace A045727.P5524308968363910797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045727.P5524308968363910797

/-! ## A045727.P10359202221225333160

`A212804(A105503(n+1)+1)`
-/

namespace A045727.P10359202221225333160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105503 (n + 1) + 1).toNat

end

end A045727.P10359202221225333160

/-! ## A045727.P17196081006164251675

`A053602(2*A105503(n+1))`
-/

namespace A045727.P17196081006164251675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105503 (n + 1)).toNat

end

end A045727.P17196081006164251675

/-! ## A045727.P14827226036109574821

`A103609(2*A105503(n+1))`
-/

namespace A045727.P14827226036109574821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105503 (n + 1)).toNat

end

end A045727.P14827226036109574821

/-! ## A045727.P11111995133808737334

`∑{d}[A105503(n+1), A007436(#)]`
-/

namespace A045727.P11111995133808737334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A045727.P11111995133808737334

/-! ## A045727.P6161408183777762231

`A103609(A105503(n+1)+A105503(n+1)+1)`
-/

namespace A045727.P6161408183777762231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A105503 (n + 1) + (A105503 (n + 1) + 1)).toNat

end

end A045727.P6161408183777762231

/-!
# A045728: Fibonacci numbers having initial digit '4'.

The programs for A045728, there is no canonical definition to state claims against.
-/

/-! ## A045728.P6488620721333091277

`A000045(A105504(n+1))`
-/

namespace A045728.P6488620721333091277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105504 (n + 1)).toNat

end

end A045728.P6488620721333091277

/-! ## A045728.P6722471465348323630

`A000045(eq[4, A008963(n)])`
-/

namespace A045728.P6722471465348323630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045728.P6722471465348323630

/-! ## A045728.P4742215477439909061

`A053602(2*A105504(n+1))`
-/

namespace A045728.P4742215477439909061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105504 (n + 1)).toNat

end

end A045728.P4742215477439909061

/-! ## A045728.P16792748093956627442

`A103609(2*A105504(n+1))`
-/

namespace A045728.P16792748093956627442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105504 (n + 1)).toNat

end

end A045728.P16792748093956627442

/-! ## A045728.P16151138572519620239

`∑{d}[A105504(n+1), A007436(#)]`
-/

namespace A045728.P16151138572519620239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A045728.P16151138572519620239

/-!
# A045729: Fibonacci numbers having initial digit '5'.

The programs for A045729, there is no canonical definition to state claims against.
-/

/-! ## A045729.P14001036163843805801

`A000045(A105505(n+1))`
-/

namespace A045729.P14001036163843805801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105505 (n + 1)).toNat

end

end A045729.P14001036163843805801

/-! ## A045729.P8133646824684787610

`A000045(eq[5, A008963(n)])`
-/

namespace A045729.P8133646824684787610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045729.P8133646824684787610

/-! ## A045729.P18276563167013698980

`A053602(2*A105505(n+1))`
-/

namespace A045729.P18276563167013698980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105505 (n + 1)).toNat

end

end A045729.P18276563167013698980

/-! ## A045729.P13107891482802794376

`A103609(2*A105505(n+1))`
-/

namespace A045729.P13107891482802794376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105505 (n + 1)).toNat

end

end A045729.P13107891482802794376

/-! ## A045729.P10069287359157522671

`∑{d}[A105505(n+1), A007436(#)]`
-/

namespace A045729.P10069287359157522671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A045729.P10069287359157522671

/-!
# A045730: 

The programs for A045730, there is no canonical definition to state claims against.
-/

/-! ## A045730.P17571032061369767313

`A000045(A105506(n+1))`
-/

namespace A045730.P17571032061369767313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105506 (n + 1)).toNat

end

end A045730.P17571032061369767313

/-! ## A045730.P2096531473452083840

`A000045(eq[6, A008963(n)])`
-/

namespace A045730.P2096531473452083840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045730.P2096531473452083840

/-!
# A045731: 

The programs for A045731, there is no canonical definition to state claims against.
-/

/-! ## A045731.P11278278896826324813

`A000045(A105507(n+1))`
-/

namespace A045731.P11278278896826324813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105507 (n + 1)).toNat

end

end A045731.P11278278896826324813

/-!
# A045732: Fibonacci numbers having initial digit '8'.

The programs for A045732, there is no canonical definition to state claims against.
-/

/-! ## A045732.P4180374359648809328

`A000045(A105508(n+1))`
-/

namespace A045732.P4180374359648809328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105508 (n + 1)).toNat

end

end A045732.P4180374359648809328

/-! ## A045732.P16795001077680001201

`A049347(3*n+4)+A001611(A105508(n+1))`
-/

namespace A045732.P16795001077680001201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 4) + A001611 (A105508 (n + 1)).toNat

end

end A045732.P16795001077680001201

/-!
# A045733: 

The programs for A045733, there is no canonical definition to state claims against.
-/

/-! ## A045733.P2106395038400970765

`A000045(A105509(n+1))`
-/

namespace A045733.P2106395038400970765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105509 (n + 1)).toNat

end

end A045733.P2106395038400970765

/-! ## A045733.P11606318660211979075

`A000045(eq[9, A008963(n)])`
-/

namespace A045733.P11606318660211979075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045733.P11606318660211979075

/-!
# A045734: Smallest Fibonacci number beginning "n^2".

The programs for A045734, there is no canonical definition to state claims against.
-/

/-! ## A045734.P3402242617860055505

`A000045(A020344((n+1)²))`
-/

namespace A045734.P3402242617860055505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020344 ((n + 1) ^ 2)).toNat

end

end A045734.P3402242617860055505

/-! ## A045734.P5508973441760467769

`A020345((n+1)²)`
-/

namespace A045734.P5508973441760467769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020345 ((n + 1) ^ 2)

end

end A045734.P5508973441760467769

/-! ## A045734.P15485135725449566948

`A338827(n)+A020345(A111704(n+1))`
-/

namespace A045734.P15485135725449566948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n + A020345 (A111704 (n + 1)).toNat

end

end A045734.P15485135725449566948

/-! ## A045734.P2456133665918164320

`A020345(A111704(n+1))*A287384(n)`
-/

namespace A045734.P2456133665918164320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020345 (A111704 (n + 1)).toNat * A287384 n

end

end A045734.P2456133665918164320

/-! ## A045734.P8688965225774360855

`A338827(n)+A020345((n+1)*A111705(n+1))`
-/

namespace A045734.P8688965225774360855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n + A020345 ((n + 1 : ℤ) * A111705 (n + 1)).toNat

end

end A045734.P8688965225774360855

/-!
# A045737: Number of nonroot branch nodes in all noncrossing rooted trees on n nodes on a circle.

The programs for A045737, the canonical program `A045737.P2550653022607152751` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045737 has offset 2).

The definition of A045737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045737.P1386599756099786679

`(n+1)*A102594(n+1)`
-/

namespace A045737.P1386599756099786679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102594 (n + 1)

end

end A045737.P1386599756099786679

namespace A045737

/-- `(n+1)*A102594(n+1)` -/
def P1386599756099786679.Spec : Prop :=
  ∀ n, P1386599756099786679.a n = A045737 (n + 2)

end A045737

/-! ## A045737.P2550653022607152751

`A026019(n)-A001764(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045737

/-- `A026019(n)-A001764(n+1)` -/
def P2550653022607152751.Spec : Prop :=
  ∀ n, P2550653022607152751.a n = A045737 (n + 2)

theorem P2550653022607152751.correct : P2550653022607152751.Spec := by
  intro n
  simp only [A045737, Nat.add_sub_cancel]

end A045737

/-! ## A045737.P5958151922230510563

`A045738(n+2)-A045721(n)`
-/

namespace A045737.P5958151922230510563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045738 (n + 2) - A045721 n

end

end A045737.P5958151922230510563

namespace A045737

/-- `A045738(n+2)-A045721(n)` -/
def P5958151922230510563.Spec : Prop :=
  ∀ n, P5958151922230510563.a n = A045737 (n + 2)

end A045737

/-! ## A045737.P4190466822749396440

`A045738(n+2)-A099578(2*n)`
-/

namespace A045737.P4190466822749396440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045738 (n + 2) - A099578 (2 * n)

end

end A045737.P4190466822749396440

namespace A045737

/-- `A045738(n+2)-A099578(2*n)` -/
def P4190466822749396440.Spec : Prop :=
  ∀ n, P4190466822749396440.a n = A045737 (n + 2)

end A045737

/-! ## A045737.P7540302304244312302

`A045738(n+2)-A065942(A005408(n))`
-/

namespace A045737.P7540302304244312302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045738 (n + 2) - A065942 (A005408 n).toNat

end

end A045737.P7540302304244312302

namespace A045737

/-- `A045738(n+2)-A065942(A005408(n))` -/
def P7540302304244312302.Spec : Prop :=
  ∀ n, P7540302304244312302.a n = A045737 (n + 2)

end A045737

/-!
# A045738: Number of branches in all noncrossing rooted trees on n nodes on a circle.

The programs for A045738, the canonical program `A045738.P2521229374611018315` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045738 has offset 2).

The definition of A045738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045738.P3628078026616608679

`A045737(n+2)+A045721(n)`
-/

namespace A045738.P3628078026616608679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045737 (n + 2) + A045721 n

end

end A045738.P3628078026616608679

namespace A045738

/-- `A045737(n+2)+A045721(n)` -/
def P3628078026616608679.Spec : Prop :=
  ∀ n, P3628078026616608679.a n = A045738 (n + 2)

end A045738

/-! ## A045738.P18432305013387697925

`A099578(2*n)+A045737(n+2)`
-/

namespace A045738.P18432305013387697925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n) + A045737 (n + 2)

end

end A045738.P18432305013387697925

namespace A045738

/-- `A099578(2*n)+A045737(n+2)` -/
def P18432305013387697925.Spec : Prop :=
  ∀ n, P18432305013387697925.a n = A045738 (n + 2)

end A045738

/-! ## A045738.P17084700681381607866

`A065942(2*n+1)+A045737(n+2)`
-/

namespace A045738.P17084700681381607866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n + 1) + A045737 (n + 2)

end

end A045738.P17084700681381607866

namespace A045738

/-- `A065942(2*n+1)+A045737(n+2)` -/
def P17084700681381607866.Spec : Prop :=
  ∀ n, P17084700681381607866.a n = A045738 (n + 2)

end A045738

/-! ## A045738.P9138824266143784312

`A001764(n+1)+n*A336945(n+1)`
-/

namespace A045738.P9138824266143784312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) + (n : ℤ) * A336945 (n + 1)

end

end A045738.P9138824266143784312

namespace A045738

/-- `A001764(n+1)+n*A336945(n+1)` -/
def P9138824266143784312.Spec : Prop :=
  ∀ n, P9138824266143784312.a n = A045738 (n + 2)

end A045738

/-! ## A045738.P17218024876522857654

`A047761(2*n+1)+n*A336945(n+1)`
-/

namespace A045738.P17218024876522857654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (2 * n + 1) + (n : ℤ) * A336945 (n + 1)

end

end A045738.P17218024876522857654

namespace A045738

/-- `A047761(2*n+1)+n*A336945(n+1)` -/
def P17218024876522857654.Spec : Prop :=
  ∀ n, P17218024876522857654.a n = A045738 (n + 2)

end A045738

/-! ## A045738.P2521229374611018315

`A004319(n+1)+A001764(n)-A005809(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045738

/-- `A004319(n+1)+A001764(n)-A005809(n)` -/
def P2521229374611018315.Spec : Prop :=
  ∀ n, P2521229374611018315.a n = A045738 (n + 2)

theorem P2521229374611018315.correct : P2521229374611018315.Spec := by
  intro n
  simp only [A045738, Nat.add_sub_cancel]

end A045738

/-!
# A045739: Number of edges in all noncrossing forests on n nodes on a circle.

The programs for A045739, there is no canonical definition to state claims against.
-/

/-! ## A045739.P3072784787605771475

`A198082(A058066(round(ϕ*a(n-1))))` with `a(0)=1`
-/

namespace A045739.P3072784787605771475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A198082 (A058066 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A045739.P3072784787605771475

/-!
# A045740: Number of components in all forests on nodes on a circle.

The programs for A045740, there is no canonical definition to state claims against.
-/

/-! ## A045740.P8852195985723409404

`A097613(n+1)+A002264(A056053(n))`
-/

namespace A045740.P8852195985723409404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) + A002264 (A056053 n).toNat

end

end A045740.P8852195985723409404

/-! ## A045740.P7558210202836999832

`A276726(n)+A123108(A036722(2*(n+1)))`
-/

namespace A045740.P7558210202836999832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276726 n + A123108 (A036722 (2 * (n + 1))).toNat

end

end A045740.P7558210202836999832

/-!
# A045741: Number of edges in all noncrossing connected graphs on n nodes on a circle.

The programs for A045741, there is no canonical definition to state claims against.
-/

/-! ## A045741.P17100693908967518254

`(n+2)/2*A143023(n+2)`
-/

namespace A045741.P17100693908967518254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A143023 (n + 2) : ℚ)

end

end A045741.P17100693908967518254

/-! ## A045741.P5677353370373937071

`A244038(n+1)-A244039(n+1)`
-/

namespace A045741.P5677353370373937071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244038 (n + 1) - A244039 (n + 1)

end

end A045741.P5677353370373937071

/-! ## A045741.P4942310982678640556

`(A244038(n+1)-A091527(n+1))/2`
-/

namespace A045741.P4942310982678640556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244038 (n + 1) - A091527 (n + 1) : ℚ) / 2

end

end A045741.P4942310982678640556

/-! ## A045741.P1849665971909649425

`A110441(2*(n+1)²)`
-/

namespace A045741.P1849665971909649425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (2 * (n + 1) ^ 2)

end

end A045741.P1849665971909649425

/-! ## A045741.P3968039507258643996

`record[A110441(∑[A110422(2*n+3)])]`
-/

namespace A045741.P3968039507258643996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110422 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045741.P3968039507258643996

/-! ## A045741.P167115286235804236

`A206306((n+1)²+(n+2)²)`
-/

namespace A045741.P167115286235804236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A045741.P167115286235804236

/-!
# A045742: Number of interior faces in all noncrossing connected graphs on n nodes on a circle.

The programs for A045742, there is no canonical definition to state claims against.
-/

/-! ## A045742.P1243521694448631975

`∑[A056847(Δ[A052838(n)])]`
-/

namespace A045742.P1243521694448631975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052838 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045742.P1243521694448631975

/-!
# A045743: Number of noncrossing connected graphs on n nodes on a circle having no triangular faces.

The programs for A045743, there is no canonical definition to state claims against.
-/

/-! ## A045743.P9880256479082896501

`A089435(∑[n]+2)`
-/

namespace A045743.P9880256479082896501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A045743.P9880256479082896501

/-! ## A045743.P6102351682125304012

`record[A089435(n+2)/A007318(n)]`
-/

namespace A045743.P6102351682125304012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089435 (n + 2) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045743.P6102351682125304012

/-! ## A045743.P8393652531646506487

`record[A089435(n+2)/A013609(n)]`
-/

namespace A045743.P8393652531646506487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089435 (n + 2) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045743.P8393652531646506487

/-! ## A045743.P3528030453140135802

`record[gcd(A002262(n), A089435(n+2))]`
-/

namespace A045743.P3528030453140135802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A089435 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045743.P3528030453140135802

/-! ## A045743.P5169104823670488317

`record[A089435(n+2)/A181854(n)]`
-/

namespace A045743.P5169104823670488317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089435 (n + 2) : ℚ) / (A181854 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045743.P5169104823670488317

/-!
# A045744: Number of noncrossing connected graphs on n nodes on a circle having no four-sided faces.

The programs for A045744, there is no canonical definition to state claims against.
-/

/-! ## A045744.P15453803599529203849

`A094046(A290743(n+1))`
-/

namespace A045744.P15453803599529203849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094046 (A290743 (n + 1)).toNat

end

end A045744.P15453803599529203849

/-! ## A045744.P9007503740816628317

`A094046(Δ[A002623(n)]-n)`
-/

namespace A045744.P9007503740816628317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094046 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A045744.P9007503740816628317

/-!
# A045745: Numbers k such that sum of proper divisors s(k) is a triangular number.

The programs for A045745, the canonical program `A045745.P1348953636339689207` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045745 has offset 1).

The definition of A045745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045745.P453117966140131578

`eq[1, A081532(A001065(n+1)+1)]+1`
-/

namespace A045745.P453117966140131578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A001065 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045745.P453117966140131578

namespace A045745

/-- `eq[1, A081532(A001065(n+1)+1)]+1` -/
def P453117966140131578.Spec : Prop :=
  ∀ n, (P453117966140131578.a n : ℤ) = A045745 (n + 1)

end A045745

/-! ## A045745.P1348953636339689207

`eq[1, A002260(∑{d}[n+1, #]-n)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045745

/-- `eq[1, A002260(∑{d}[n+1, #]-n)]+1` -/
def P1348953636339689207.Spec : Prop :=
  ∀ n, (P1348953636339689207.a n : ℤ) = A045745 (n + 1)

theorem P1348953636339689207.correct : P1348953636339689207.Spec := by
  intro n
  simp only [A045745, Nat.add_sub_cancel]

end A045745

/-! ## A045745.P11470511420339286789

`eq[1, A059268(A001065(n+1))]+1`
-/

namespace A045745.P11470511420339286789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A001065 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045745.P11470511420339286789

namespace A045745

/-- `eq[1, A059268(A001065(n+1))]+1` -/
def P11470511420339286789.Spec : Prop :=
  ∀ n, (P11470511420339286789.a n : ℤ) = A045745 (n + 1)

end A045745

/-! ## A045745.P6072881640583133609

`lt[A002260(A001065(n+1)+1), 2]+1`
-/

namespace A045745.P6072881640583133609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001065 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A045745.P6072881640583133609

namespace A045745

/-- `lt[A002260(A001065(n+1)+1), 2]+1` -/
def P6072881640583133609.Spec : Prop :=
  ∀ n, (P6072881640583133609.a n : ℤ) = A045745 (n + 1)

end A045745

/-! ## A045745.P12307206995174291390

`record[(n+1)/A002260(A000203(n+1)-n)]`
-/

namespace A045745.P12307206995174291390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002260 (A000203 (n + 1) - (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045745.P12307206995174291390

namespace A045745

/-- `record[(n+1)/A002260(A000203(n+1)-n)]` -/
def P12307206995174291390.Spec : Prop :=
  ∀ n, P12307206995174291390.a n = (A045745 (n + 1) : ℚ)

end A045745

/-! ## A045745.P9295005261565564687

`record[(n+1)*(1-A060959(A048050(n+1)))]`
-/

namespace A045745.P9295005261565564687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A060959 (A048050 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045745.P9295005261565564687

namespace A045745

/-- `record[(n+1)*(1-A060959(A048050(n+1)))]` -/
def P9295005261565564687.Spec : Prop :=
  ∀ n, P9295005261565564687.a n = A045745 (n + 1)

end A045745

/-! ## A045745.P2088709282540773836

`record[(n+1)*A010054(A000203(n+1)-(n+1))]`
-/

namespace A045745.P2088709282540773836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010054 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045745.P2088709282540773836

namespace A045745

/-- `record[(n+1)*A010054(A000203(n+1)-(n+1))]` -/
def P2088709282540773836.Spec : Prop :=
  ∀ n, P2088709282540773836.a n = A045745 (n + 1)

end A045745

/-! ## A045745.P16135539560845090128

`record[(n+1)/A226441(A319699(2*(n+1))+1)]`
-/

namespace A045745.P16135539560845090128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A226441 (A319699 (2 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045745.P16135539560845090128

namespace A045745

/-- `record[(n+1)/A226441(A319699(2*(n+1))+1)]` -/
def P16135539560845090128.Spec : Prop :=
  ∀ n, P16135539560845090128.a n = (A045745 (n + 1) : ℚ)

end A045745

/-! ## A045745.P9546657449912883742

`lt[A319730(∑{d}[n+1, #]-(n+1)), 3]+1`
-/

namespace A045745.P9546657449912883742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319730 (∑ d ∈ Nat.divisors (f2 n), d - (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A045745.P9546657449912883742

namespace A045745

/-- `lt[A319730(∑{d}[n+1, #]-(n+1)), 3]+1` -/
def P9546657449912883742.Spec : Prop :=
  ∀ n, (P9546657449912883742.a n : ℤ) = A045745 (n + 1)

end A045745

/-!
# A045746: Numbers whose sum of divisors is a triangular number.

The programs for A045746, the canonical program `A045746.P5286047332654297800` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045746 has offset 1).

The definition of A045746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045746.P1604927073115335731

`eq[1, A081532(A000203(n+1)+1)]+1`
-/

namespace A045746.P1604927073115335731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045746.P1604927073115335731

namespace A045746

/-- `eq[1, A081532(A000203(n+1)+1)]+1` -/
def P1604927073115335731.Spec : Prop :=
  ∀ n, (P1604927073115335731.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P5286047332654297800

`eq[1, A002260(A000203(n+1)+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045746

/-- `eq[1, A002260(A000203(n+1)+1)]+1` -/
def P5286047332654297800.Spec : Prop :=
  ∀ n, (P5286047332654297800.a n : ℤ) = A045746 (n + 1)

theorem P5286047332654297800.correct : P5286047332654297800.Spec := by
  intro n
  simp only [A045746, Nat.add_sub_cancel]

end A045746

/-! ## A045746.P16861904681137330145

`eq[1, A004736(A000203(n+1))]+1`
-/

namespace A045746.P16861904681137330145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045746.P16861904681137330145

namespace A045746

/-- `eq[1, A004736(A000203(n+1))]+1` -/
def P16861904681137330145.Spec : Prop :=
  ∀ n, (P16861904681137330145.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P930583809237911733

`record[(n+1)/A080851(A001065(n+1)+n+1)]`
-/

namespace A045746.P930583809237911733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A080851 (A001065 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045746.P930583809237911733

namespace A045746

/-- `record[(n+1)/A080851(A001065(n+1)+n+1)]` -/
def P930583809237911733.Spec : Prop :=
  ∀ n, P930583809237911733.a n = (A045746 (n + 1) : ℚ)

end A045746

/-! ## A045746.P1908305812802295941

`eq[A000038(n), A023532(A039653(n))]`
-/

namespace A045746.P1908305812802295941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045746.P1908305812802295941

namespace A045746

/-- `eq[A000038(n), A023532(A039653(n))]` -/
def P1908305812802295941.Spec : Prop :=
  ∀ n, (P1908305812802295941.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P13632016599715393675

`eq[A000007(n), A025581(A039653(n))]`
-/

namespace A045746.P13632016599715393675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045746.P13632016599715393675

namespace A045746

/-- `eq[A000007(n), A025581(A039653(n))]` -/
def P13632016599715393675.Spec : Prop :=
  ∀ n, (P13632016599715393675.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P9063289010777744022

`eq[2, A210535(A000203(n+1)+1)]+1`
-/

namespace A045746.P9063289010777744022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045746.P9063289010777744022

namespace A045746

/-- `eq[2, A210535(A000203(n+1)+1)]+1` -/
def P9063289010777744022.Spec : Prop :=
  ∀ n, (P9063289010777744022.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P1560925619614225889

`record[(n+1)/A276617(A000203(n+1)+1)]`
-/

namespace A045746.P1560925619614225889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A276617 (A000203 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045746.P1560925619614225889

namespace A045746

/-- `record[(n+1)/A276617(A000203(n+1)+1)]` -/
def P1560925619614225889.Spec : Prop :=
  ∀ n, P1560925619614225889.a n = (A045746 (n + 1) : ℚ)

end A045746

/-! ## A045746.P3800638262168559272

`eq[A113445(A039653(n))², A057427(n)]`
-/

namespace A045746.P3800638262168559272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113445 (A039653 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045746.P3800638262168559272

namespace A045746

/-- `eq[A113445(A039653(n))², A057427(n)]` -/
def P3800638262168559272.Spec : Prop :=
  ∀ n, (P3800638262168559272.a n : ℤ) = A045746 (n + 1)

end A045746

/-! ## A045746.P3958036809517178296

`lt[A108440(A039653(n)), A000005(n+1)]`
-/

namespace A045746.P3958036809517178296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108440 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045746.P3958036809517178296

namespace A045746

/-- `lt[A108440(A039653(n)), A000005(n+1)]` -/
def P3958036809517178296.Spec : Prop :=
  ∀ n, (P3958036809517178296.a n : ℤ) = A045746 (n + 1)

end A045746

/-!
# A045747: Number of prime factors of n!!!! (A007662), with multiplicity.

The programs for A045747, the canonical program `A045747.P5509951523230334629` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045747 has offset 1).

The definition of A045747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045747.P5509951523230334629

`A001222(A007662(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045747

/-- `A001222(A007662(n+1))` -/
def P5509951523230334629.Spec : Prop :=
  ∀ n, P5509951523230334629.a n = A045747 (n + 1)

theorem P5509951523230334629.correct : P5509951523230334629.Spec := by
  intro n
  simp only [A045747, Nat.add_sub_cancel]

end A045747

/-! ## A045747.P9663379645633747593

`∑{e}[n+1, #]+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A045747.P9663379645633747593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 4)

end

end A045747.P9663379645633747593

namespace A045747

/-- `∑{e}[n+1, #]+a(n-4)` -/
def P9663379645633747593.Spec : Prop :=
  ∀ n, (P9663379645633747593.a n : ℤ) = A045747 (n + 1)

end A045747

/-! ## A045747.P3533985434155751626

`A001222(n+1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A045747.P3533985434155751626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A001222 (n + 1) + a (n - 4)

end

end A045747.P3533985434155751626

namespace A045747

/-- `A001222(n+1)+a(n-4)` -/
def P3533985434155751626.Spec : Prop :=
  ∀ n, P3533985434155751626.a n = A045747 (n + 1)

end A045747

/-! ## A045747.P11743406155624412738

`∑{e}[Δ[A108895(n)], #]`
-/

namespace A045747.P11743406155624412738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A045747.P11743406155624412738

namespace A045747

/-- `∑{e}[Δ[A108895(n)], #]` -/
def P11743406155624412738.Spec : Prop :=
  ∀ n, (P11743406155624412738.a n : ℤ) = A045747 (n + 1)

end A045747

/-! ## A045747.P3059222158103024150

`∑{e}[record[A007662(A155043(n))], #]`
-/

namespace A045747.P3059222158103024150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A155043 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A045747.P3059222158103024150

namespace A045747

/-- `∑{e}[record[A007662(A155043(n))], #]` -/
def P3059222158103024150.Spec : Prop :=
  ∀ n, (P3059222158103024150.a n : ℤ) = A045747 (n + 1)

end A045747

/-!
# A045748: a(n) is the number consisting of the last n digits (although any leading 0's among those last n digits are omitted) of Sum_{j=1..k} j! for all sufficiently large k.

The programs for A045748, there is no canonical definition to state claims against.
-/

/-! ## A045748.P11572413770706437929

`∑[10^n*A082648(n+1)]`
-/

namespace A045748.P11572413770706437929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A082648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045748.P11572413770706437929

/-! ## A045748.P4216675258784369668

`∑[(9-A065356(n))*10^n]`
-/

namespace A045748.P4216675258784369668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A065356 n) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045748.P4216675258784369668

/-!
# A045749: Extension of Beatty sequence; complement of A045750.

The programs for A045749, the canonical program `A045749.P16244404807237622354` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045749 has offset 0).

The definition of A045749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045749.P2911298778556040059

`comp[A045750(n+1)]`
-/

namespace A045749.P2911298778556040059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045749.P2911298778556040059

namespace A045749

/-- `comp[A045750(n+1)]` -/
def P2911298778556040059.Spec : Prop :=
  ∀ n, (P2911298778556040059.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P16244404807237622354

`comp[A187571(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045749

/-- `comp[A187571(n+1)]` -/
def P16244404807237622354.Spec : Prop :=
  ∀ n, (P16244404807237622354.a n : ℤ) = A045749 n

theorem P16244404807237622354.correct : P16244404807237622354.Spec := by
  intro n
  simp only [A045749]

end A045749

/-! ## A045749.P17741179888744523281

`(A045750(n)-n)/3`
-/

namespace A045749.P17741179888744523281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045750 n - (n : ℤ) : ℚ) / 3

end

end A045749.P17741179888744523281

namespace A045749

/-- `(A045750(n)-n)/3` -/
def P17741179888744523281.Spec : Prop :=
  ∀ n, P17741179888744523281.a n = (A045749 n : ℚ)

end A045749

/-! ## A045749.P15509523628832295239

`∪[A187570(n+1), n²²]`
-/

namespace A045749.P15509523628832295239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A045749.P15509523628832295239

namespace A045749

/-- `∪[A187570(n+1), n²²]` -/
def P15509523628832295239.Spec : Prop :=
  ∀ n, (P15509523628832295239.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P6075517849471199812

`∪[A000541(n), A187570(n+1)]`
-/

namespace A045749.P6075517849471199812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P6075517849471199812

namespace A045749

/-- `∪[A000541(n), A187570(n+1)]` -/
def P6075517849471199812.Spec : Prop :=
  ∀ n, (P6075517849471199812.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P7347143279538997987

`∪[A000542(n), A187570(n+1)]`
-/

namespace A045749.P7347143279538997987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P7347143279538997987

namespace A045749

/-- `∪[A000542(n), A187570(n+1)]` -/
def P7347143279538997987.Spec : Prop :=
  ∀ n, (P7347143279538997987.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P3546615490079284253

`∪[A000583(n), A187570(n+1)]`
-/

namespace A045749.P3546615490079284253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P3546615490079284253

namespace A045749

/-- `∪[A000583(n), A187570(n+1)]` -/
def P3546615490079284253.Spec : Prop :=
  ∀ n, (P3546615490079284253.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P2699647122738629858

`∪[A001014(n), A187570(n+1)]`
-/

namespace A045749.P2699647122738629858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P2699647122738629858

namespace A045749

/-- `∪[A001014(n), A187570(n+1)]` -/
def P2699647122738629858.Spec : Prop :=
  ∀ n, (P2699647122738629858.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P17390593070856724412

`∪[A001297(n), A187570(n+1)]`
-/

namespace A045749.P17390593070856724412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P17390593070856724412

namespace A045749

/-- `∪[A001297(n), A187570(n+1)]` -/
def P17390593070856724412.Spec : Prop :=
  ∀ n, (P17390593070856724412.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P268552324493759225

`∪[A001737(n), A187570(n+1)]`
-/

namespace A045749.P268552324493759225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P268552324493759225

namespace A045749

/-- `∪[A001737(n), A187570(n+1)]` -/
def P268552324493759225.Spec : Prop :=
  ∀ n, (P268552324493759225.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P3569224264831983157

`∪[A059255(n), A187570(n+1)]`
-/

namespace A045749.P3569224264831983157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045749.P3569224264831983157

namespace A045749

/-- `∪[A059255(n), A187570(n+1)]` -/
def P3569224264831983157.Spec : Prop :=
  ∀ n, (P3569224264831983157.a n : ℤ) = A045749 n

end A045749

/-! ## A045749.P7253189129089700093

`A002264(A045750(n)-n)`
-/

namespace A045749.P7253189129089700093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045750 n - (n : ℤ)).toNat

end

end A045749.P7253189129089700093

namespace A045749

/-- `A002264(A045750(n)-n)` -/
def P7253189129089700093.Spec : Prop :=
  ∀ n, P7253189129089700093.a n = A045749 n

end A045749

/-! ## A045749.P5347709081428110577

`A051176(A045750(n)-n)`
-/

namespace A045749.P5347709081428110577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A045750 n - (n : ℤ)).toNat

end

end A045749.P5347709081428110577

namespace A045749

/-- `A051176(A045750(n)-n)` -/
def P5347709081428110577.Spec : Prop :=
  ∀ n, P5347709081428110577.a n = A045749 n

end A045749

/-! ## A045749.P2322152191830175115

`A260316(A045750(n)-n)`
-/

namespace A045749.P2322152191830175115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (A045750 n - (n : ℤ)).toNat

end

end A045749.P2322152191830175115

namespace A045749

/-- `A260316(A045750(n)-n)` -/
def P2322152191830175115.Spec : Prop :=
  ∀ n, P2322152191830175115.a n = A045749 n

end A045749

/-!
# A045750: Extension of Beatty sequence, complement of A045749.

The programs for A045750, the canonical program `A045750.P15382284062470339353` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045750 has offset 0).

The definition of A045750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045749, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045750.P15382284062470339353

`3*A045749(n)+n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045750

/-- `3*A045749(n)+n` -/
def P15382284062470339353.Spec : Prop :=
  ∀ n, P15382284062470339353.a n = A045750 n

theorem P15382284062470339353.correct : P15382284062470339353.Spec := by
  intro n
  simp only [A045750]

end A045750

/-! ## A045750.P7876530740148756913

`∪[A187571(n+1), A016913(n)]`
-/

namespace A045750.P7876530740148756913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045750.P7876530740148756913

namespace A045750

/-- `∪[A187571(n+1), A016913(n)]` -/
def P7876530740148756913.Spec : Prop :=
  ∀ n, (P7876530740148756913.a n : ℤ) = A045750 n

end A045750

/-! ## A045750.P12445792522411295870

`∪[A187571(n+1), A115828(n)]`
-/

namespace A045750.P12445792522411295870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045750.P12445792522411295870

namespace A045750

/-- `∪[A187571(n+1), A115828(n)]` -/
def P12445792522411295870.Spec : Prop :=
  ∀ n, (P12445792522411295870.a n : ℤ) = A045750 n

end A045750

/-! ## A045750.P11411145581876393596

`A187571(A028310(n))%(n+2)²`
-/

namespace A045750.P11411145581876393596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187571 (A028310 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A045750.P11411145581876393596

namespace A045750

/-- `A187571(A028310(n))%(n+2)²` -/
def P11411145581876393596.Spec : Prop :=
  ∀ n, P11411145581876393596.a n = A045750 n

end A045750

/-! ## A045750.P3439973251363160620

`A187571(n-A038374(C(2, a(n-1))+1)+1)` with `a(0)=0`
-/

namespace A045750.P3439973251363160620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187571 ((n : ℤ) - A038374 (Nat.choose 2 (a (n - 1)).toNat + 1) + 1).toNat

end

end A045750.P3439973251363160620

namespace A045750

/-- `A187571(n-A038374(C(2, a(n-1))+1)+1)` -/
def P3439973251363160620.Spec : Prop :=
  ∀ n, P3439973251363160620.a n = A045750 n

end A045750

/-! ## A045750.P479617424790700638

`A023443(n)+A016777(A045749(n))`
-/

namespace A045750.P479617424790700638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A016777 (A045749 n).toNat

end

end A045750.P479617424790700638

namespace A045750

/-- `A023443(n)+A016777(A045749(n))` -/
def P479617424790700638.Spec : Prop :=
  ∀ n, P479617424790700638.a n = A045750 n

end A045750

/-! ## A045750.P6686922146545745522

`A016777(A045749(n))-A024000(n)`
-/

namespace A045750.P6686922146545745522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A045749 n).toNat - A024000 n

end

end A045750.P6686922146545745522

namespace A045750

/-- `A016777(A045749(n))-A024000(n)` -/
def P6686922146545745522.Spec : Prop :=
  ∀ n, P6686922146545745522.a n = A045750 n

end A045750

/-! ## A045750.P5645597955850014536

`A008585(A045749(n))+n`
-/

namespace A045750.P5645597955850014536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045749 n).toNat + (n : ℤ)

end

end A045750.P5645597955850014536

namespace A045750

/-- `A008585(A045749(n))+n` -/
def P5645597955850014536.Spec : Prop :=
  ∀ n, P5645597955850014536.a n = A045750 n

end A045750

/-! ## A045750.P6093066506100944280

`record[(n+1)*A284364(A284366(n+1)+1)]`
-/

namespace A045750.P6093066506100944280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284364 (A284366 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045750.P6093066506100944280

namespace A045750

/-- `record[(n+1)*A284364(A284366(n+1)+1)]` -/
def P6093066506100944280.Spec : Prop :=
  ∀ n, P6093066506100944280.a n = A045750 n

end A045750

/-!
# A045751: Numbers k such that 4*k + 1 is not prime.

The programs for A045751, the canonical program `A045751.P2664961897306149397` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045751 has offset 1).

The definition of A045751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045751.P14110034435061980883

`comp[floor(p?[2*n+2*n+1]/4)]`
-/

namespace A045751.P14110034435061980883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045751.P14110034435061980883

namespace A045751

/-- `comp[floor(p?[2*n+2*n+1]/4)]` -/
def P14110034435061980883.Spec : Prop :=
  ∀ n, (P14110034435061980883.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P2710339077806590401

`comp[A005098(n+1)]`
-/

namespace A045751.P2710339077806590401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045751.P2710339077806590401

namespace A045751

/-- `comp[A005098(n+1)]` -/
def P2710339077806590401.Spec : Prop :=
  ∀ n, (P2710339077806590401.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P2664961897306149397

`eq[0, A101264(2*n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045751

/-- `eq[0, A101264(2*n)]` -/
def P2664961897306149397.Spec : Prop :=
  ∀ n, (P2664961897306149397.a n : ℤ) = A045751 (n + 1)

theorem P2664961897306149397.correct : P2664961897306149397.Spec := by
  intro n
  simp only [A045751, Nat.add_sub_cancel]

end A045751

/-! ## A045751.P8539052230189106653

`lt[1, A237053(2*n)]`
-/

namespace A045751.P8539052230189106653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045751.P8539052230189106653

namespace A045751

/-- `lt[1, A237053(2*n)]` -/
def P8539052230189106653.Spec : Prop :=
  ∀ n, (P8539052230189106653.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P18199857518584451027

`floor(A091113(n+1)/4)`
-/

namespace A045751.P18199857518584451027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091113 (n + 1) : ℚ) / 4⌋

end

end A045751.P18199857518584451027

namespace A045751

/-- `floor(A091113(n+1)/4)` -/
def P18199857518584451027.Spec : Prop :=
  ∀ n, P18199857518584451027.a n = A045751 (n + 1)

end A045751

/-! ## A045751.P12593449338754887252

`comp[A111215(n+1)+1]`
-/

namespace A045751.P12593449338754887252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045751.P12593449338754887252

namespace A045751

/-- `comp[A111215(n+1)+1]` -/
def P12593449338754887252.Spec : Prop :=
  ∀ n, (P12593449338754887252.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P17301238162128643104

`comp[eq[2, A000005(4*n+1)]]`
-/

namespace A045751.P17301238162128643104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A045751.P17301238162128643104

namespace A045751

/-- `comp[eq[2, A000005(4*n+1)]]` -/
def P17301238162128643104.Spec : Prop :=
  ∀ n, (P17301238162128643104.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P17375283984627469946

`lt[A020639(4*n+1), n+2]`
-/

namespace A045751.P17375283984627469946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045751.P17375283984627469946

namespace A045751

/-- `lt[A020639(4*n+1), n+2]` -/
def P17375283984627469946.Spec : Prop :=
  ∀ n, (P17375283984627469946.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P17648791096191513926

`lt[n, n^A001222(2*n+2*n+1)]`
-/

namespace A045751.P17648791096191513926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (2 * n + (2 * n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A045751.P17648791096191513926

namespace A045751

/-- `lt[n, n^A001222(2*n+2*n+1)]` -/
def P17648791096191513926.Spec : Prop :=
  ∀ n, (P17648791096191513926.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P1182451267385130382

`lt[A006530(2*n+2*n+1), 2*(n+1)]`
-/

namespace A045751.P1182451267385130382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + (2 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045751.P1182451267385130382

namespace A045751

/-- `lt[A006530(2*n+2*n+1), 2*(n+1)]` -/
def P1182451267385130382.Spec : Prop :=
  ∀ n, (P1182451267385130382.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P15073344793321831836

`lt[1, A000032(A001222(4*n+1))]`
-/

namespace A045751.P15073344793321831836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A001222 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045751.P15073344793321831836

namespace A045751

/-- `lt[1, A000032(A001222(4*n+1))]` -/
def P15073344793321831836.Spec : Prop :=
  ∀ n, (P15073344793321831836.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P4976742903173241647

`lt[1, 5%A000203(A000005(4*n+1)+1)]`
-/

namespace A045751.P4976742903173241647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A000203 (A000005 (4 * n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045751.P4976742903173241647

namespace A045751

/-- `lt[1, 5%A000203(A000005(4*n+1)+1)]` -/
def P4976742903173241647.Spec : Prop :=
  ∀ n, (P4976742903173241647.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P7221584724010263201

`lt[A001222(2*n+1), A000108(A001222(4*n+1)²)]`
-/

namespace A045751.P7221584724010263201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A001222 (4 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045751.P7221584724010263201

namespace A045751

/-- `lt[A001222(2*n+1), A000108(A001222(4*n+1)²)]` -/
def P7221584724010263201.Spec : Prop :=
  ∀ n, (P7221584724010263201.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P9517286054380066257

`lt[∑{p}[2*n+2*n+1, #], 2*n+1]`
-/

namespace A045751.P9517286054380066257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A045751.P9517286054380066257

namespace A045751

/-- `lt[∑{p}[2*n+2*n+1, #], 2*n+1]` -/
def P9517286054380066257.Spec : Prop :=
  ∀ n, (P9517286054380066257.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P5590637377343338846

`eq[0, A211173(2*n)]`
-/

namespace A045751.P5590637377343338846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P5590637377343338846

namespace A045751

/-- `eq[0, A211173(2*n)]` -/
def P5590637377343338846.Spec : Prop :=
  ∀ n, (P5590637377343338846.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P16123075742699220905

`eq[0, A286680(2*n)]`
-/

namespace A045751.P16123075742699220905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P16123075742699220905

namespace A045751

/-- `eq[0, A286680(2*n)]` -/
def P16123075742699220905.Spec : Prop :=
  ∀ n, (P16123075742699220905.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P11953219378926892884

`eq[1, A005171(A005408(2*n))]`
-/

namespace A045751.P11953219378926892884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A005408 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P11953219378926892884

namespace A045751

/-- `eq[1, A005171(A005408(2*n))]` -/
def P11953219378926892884.Spec : Prop :=
  ∀ n, (P11953219378926892884.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P6658409931891546238

`lt[A001222(2*n+1), A281680(2*n)²]`
-/

namespace A045751.P6658409931891546238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045751.P6658409931891546238

namespace A045751

/-- `lt[A001222(2*n+1), A281680(2*n)²]` -/
def P6658409931891546238.Spec : Prop :=
  ∀ n, (P6658409931891546238.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P13154080094527287652

`eq[0, A112448(2*n)]`
-/

namespace A045751.P13154080094527287652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P13154080094527287652

namespace A045751

/-- `eq[0, A112448(2*n)]` -/
def P13154080094527287652.Spec : Prop :=
  ∀ n, (P13154080094527287652.a n : ℤ) = A045751 (n + 1)

end A045751

/-! ## A045751.P7891523423648190404

`lt[1, A103961(Δ[n²])]`
-/

namespace A045751.P7891523423648190404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045751.P7891523423648190404

namespace A045751

/-- `lt[1, A103961(Δ[n²])]` -/
def P7891523423648190404.Spec : Prop :=
  ∀ n, (P7891523423648190404.a n : ℤ) = A045751 (n + 1)

end A045751

/-!
# A045752: 4n-1 is composite.

The programs for A045752, the canonical program `A045752.P3490376513677938941` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045752 has offset 1).

The definition of A045752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045752.P11300792658951853459

`A095277(n+1)+1`
-/

namespace A045752.P11300792658951853459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1) + 1

end

end A045752.P11300792658951853459

namespace A045752

/-- `A095277(n+1)+1` -/
def P11300792658951853459.Spec : Prop :=
  ∀ n, P11300792658951853459.a n = A045752 (n + 1)

end A045752

/-! ## A045752.P16436284137656815810

`A153086(n+1)+2`
-/

namespace A045752.P16436284137656815810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153086 (n + 1) + 2

end

end A045752.P16436284137656815810

namespace A045752

/-- `A153086(n+1)+2` -/
def P16436284137656815810.Spec : Prop :=
  ∀ n, P16436284137656815810.a n = A045752 (n + 1)

end A045752

/-! ## A045752.P13576154675320366189

`ceil(A091236(n+1)/4)`
-/

namespace A045752.P13576154675320366189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091236 (n + 1) : ℚ) / 4⌉

end

end A045752.P13576154675320366189

namespace A045752

/-- `ceil(A091236(n+1)/4)` -/
def P13576154675320366189.Spec : Prop :=
  ∀ n, P13576154675320366189.a n = A045752 (n + 1)

end A045752

/-! ## A045752.P6764926125369647910

`comp[A095278(n+1)]+1`
-/

namespace A045752.P6764926125369647910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A045752.P6764926125369647910

namespace A045752

/-- `comp[A095278(n+1)]+1` -/
def P6764926125369647910.Spec : Prop :=
  ∀ n, (P6764926125369647910.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P10656840299303932617

`comp[A089986(n+1)]+2`
-/

namespace A045752.P10656840299303932617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A045752.P10656840299303932617

namespace A045752

/-- `comp[A089986(n+1)]+2` -/
def P10656840299303932617.Spec : Prop :=
  ∀ n, (P10656840299303932617.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P2349076853350159361

`comp[A156287(n+1)-2]+1`
-/

namespace A045752.P2349076853350159361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A045752.P2349076853350159361

namespace A045752

/-- `comp[A156287(n+1)-2]+1` -/
def P2349076853350159361.Spec : Prop :=
  ∀ n, (P2349076853350159361.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P446768922563534297

`lt[1, A001222(abs(1-4*n))]`
-/

namespace A045752.P446768922563534297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045752.P446768922563534297

namespace A045752

/-- `lt[1, A001222(abs(1-4*n))]` -/
def P446768922563534297.Spec : Prop :=
  ∀ n, (P446768922563534297.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P3490376513677938941

`eq[0, A101264(2*n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045752

/-- `eq[0, A101264(2*n+1)]+1` -/
def P3490376513677938941.Spec : Prop :=
  ∀ n, (P3490376513677938941.a n : ℤ) = A045752 (n + 1)

theorem P3490376513677938941.correct : P3490376513677938941.Spec := by
  intro n
  simp only [A045752, Nat.add_sub_cancel]

end A045752

/-! ## A045752.P4686265527227457029

`lt[2, A000005(4*n+3)]+1`
-/

namespace A045752.P4686265527227457029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045752.P4686265527227457029

namespace A045752

/-- `lt[2, A000005(4*n+3)]+1` -/
def P4686265527227457029.Spec : Prop :=
  ∀ n, (P4686265527227457029.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P13128107735029459292

`eq[A330556(2*n+1), A330556(2*n)]+1`
-/

namespace A045752.P13128107735029459292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045752.P13128107735029459292

namespace A045752

/-- `eq[A330556(2*n+1), A330556(2*n)]+1` -/
def P13128107735029459292.Spec : Prop :=
  ∀ n, (P13128107735029459292.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P9678400830749219350

`A009056(A153086(n+1))`
-/

namespace A045752.P9678400830749219350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A153086 (n + 1)).toNat

end

end A045752.P9678400830749219350

namespace A045752

/-- `A009056(A153086(n+1))` -/
def P9678400830749219350.Spec : Prop :=
  ∀ n, P9678400830749219350.a n = A045752 (n + 1)

end A045752

/-! ## A045752.P2689241831778101033

`A020725(A095277(n+1))`
-/

namespace A045752.P2689241831778101033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A095277 (n + 1)).toNat

end

end A045752.P2689241831778101033

namespace A045752

/-- `A020725(A095277(n+1))` -/
def P2689241831778101033.Spec : Prop :=
  ∀ n, P2689241831778101033.a n = A045752 (n + 1)

end A045752

/-! ## A045752.P14219355483775855260

`lt[1, A078703(n+1)]+1`
-/

namespace A045752.P14219355483775855260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045752.P14219355483775855260

namespace A045752

/-- `lt[1, A078703(n+1)]+1` -/
def P14219355483775855260.Spec : Prop :=
  ∀ n, (P14219355483775855260.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P11355100890723046836

`lt[1, A364082(n+1)]+1`
-/

namespace A045752.P11355100890723046836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045752.P11355100890723046836

namespace A045752

/-- `lt[1, A364082(n+1)]+1` -/
def P11355100890723046836.Spec : Prop :=
  ∀ n, (P11355100890723046836.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P15792224368902531896

`lt[A089367(2*n+1), 1]+1`
-/

namespace A045752.P15792224368902531896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A045752.P15792224368902531896

namespace A045752

/-- `lt[A089367(2*n+1), 1]+1` -/
def P15792224368902531896.Spec : Prop :=
  ∀ n, (P15792224368902531896.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P406361792337040286

`eq[2, A218831(2*n+1)]+1`
-/

namespace A045752.P406361792337040286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045752.P406361792337040286

namespace A045752

/-- `eq[2, A218831(2*n+1)]+1` -/
def P406361792337040286.Spec : Prop :=
  ∀ n, (P406361792337040286.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P14984779470278851755

`lt[1, ∑{e}[a(n-1)-4, #]]` with `a(0)=1`
-/

namespace A045752.P14984779470278851755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045752.P14984779470278851755

namespace A045752

/-- `lt[1, ∑{e}[a(n-1)-4, #]]` -/
def P14984779470278851755.Spec : Prop :=
  ∀ n, (P14984779470278851755.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P3805648573532165856

`lt[2, A000010(A214834(n+2))]+1`
-/

namespace A045752.P3805648573532165856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A214834 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045752.P3805648573532165856

namespace A045752

/-- `lt[2, A000010(A214834(n+2))]+1` -/
def P3805648573532165856.Spec : Prop :=
  ∀ n, (P3805648573532165856.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P13543939133537147813

`eq[1, A282026(2*n)]+1`
-/

namespace A045752.P13543939133537147813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045752.P13543939133537147813

namespace A045752

/-- `eq[1, A282026(2*n)]+1` -/
def P13543939133537147813.Spec : Prop :=
  ∀ n, (P13543939133537147813.a n : ℤ) = A045752 (n + 1)

end A045752

/-! ## A045752.P10192197084509592213

`eq[1, A282194(2*n)]+1`
-/

namespace A045752.P10192197084509592213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045752.P10192197084509592213

namespace A045752

/-- `eq[1, A282194(2*n)]+1` -/
def P10192197084509592213.Spec : Prop :=
  ∀ n, (P10192197084509592213.a n : ℤ) = A045752 (n + 1)

end A045752

/-!
# A045753: Numbers n such that 4n-1 and 4n+1 are both primes.

The programs for A045753, the canonical program `A045753.P17143957402720220787` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045753 has offset 1).

The definition of A045753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045753.P17143957402720220787

`floor(A071699(n+1)/4)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A045753

/-- `floor(A071699(n+1)/4)` -/
def P17143957402720220787.Spec : Prop :=
  ∀ n, P17143957402720220787.a n = A045753 (n + 1)

theorem P17143957402720220787.correct : P17143957402720220787.Spec := by
  intro n
  simp only [A045753, Nat.add_sub_cancel]

end A045753

/-! ## A045753.P5304801087938917866

`ceil(A071698(n+1)/4)`
-/

namespace A045753.P5304801087938917866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071698 (n + 1) : ℚ) / 4⌉

end

end A045753.P5304801087938917866

namespace A045753

/-- `ceil(A071698(n+1)/4)` -/
def P5304801087938917866.Spec : Prop :=
  ∀ n, P5304801087938917866.a n = A045753 (n + 1)

end A045753

/-! ## A045753.P6497740959456307600

`A174236(n+1)-A123986(n+1)`
-/

namespace A045753.P6497740959456307600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174236 (n + 1) - A123986 (n + 1)

end

end A045753.P6497740959456307600

namespace A045753

/-- `A174236(n+1)-A123986(n+1)` -/
def P6497740959456307600.Spec : Prop :=
  ∀ n, P6497740959456307600.a n = A045753 (n + 1)

end A045753

/-! ## A045753.P17913221792693211256

`A241557(n+2)/2`
-/

namespace A045753.P17913221792693211256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241557 (n + 2) : ℚ) / 2

end

end A045753.P17913221792693211256

namespace A045753

/-- `A241557(n+2)/2` -/
def P17913221792693211256.Spec : Prop :=
  ∀ n, P17913221792693211256.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P1189913053906050603

`∑[A032742(Δ[A241557(n+1)])]`
-/

namespace A045753.P1189913053906050603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045753.P1189913053906050603

namespace A045753

/-- `∑[A032742(Δ[A241557(n+1)])]` -/
def P1189913053906050603.Spec : Prop :=
  ∀ n, P1189913053906050603.a n = A045753 (n + 1)

end A045753

/-! ## A045753.P2604416795576525329

`∩[A365411(n+1), A391355(n+1)]`
-/

namespace A045753.P2604416795576525329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045753.P2604416795576525329

namespace A045753

/-- `∩[A365411(n+1), A391355(n+1)]` -/
def P2604416795576525329.Spec : Prop :=
  ∀ n, (P2604416795576525329.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P13616468773821185108

`(p?[A002145(n+1)+2]-1)/4`
-/

namespace A045753.P13616468773821185108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4

end

end A045753.P13616468773821185108

namespace A045753

/-- `(p?[A002145(n+1)+2]-1)/4` -/
def P13616468773821185108.Spec : Prop :=
  ∀ n, P13616468773821185108.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P9171957785958063523

`∩[A005098(n+1), A005099(n+1)]`
-/

namespace A045753.P9171957785958063523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045753.P9171957785958063523

namespace A045753

/-- `∩[A005098(n+1), A005099(n+1)]` -/
def P9171957785958063523.Spec : Prop :=
  ∀ n, (P9171957785958063523.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P9096071801004431784

`∩[A005098(n+1), A391355(n+1)]`
-/

namespace A045753.P9096071801004431784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045753.P9096071801004431784

namespace A045753

/-- `∩[A005098(n+1), A391355(n+1)]` -/
def P9096071801004431784.Spec : Prop :=
  ∀ n, (P9096071801004431784.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P4398308178343232645

`∩[A005099(n+1), A391355(n+1)]`
-/

namespace A045753.P4398308178343232645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045753.P4398308178343232645

namespace A045753

/-- `∩[A005099(n+1), A391355(n+1)]` -/
def P4398308178343232645.Spec : Prop :=
  ∀ n, (P4398308178343232645.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P1191364199737223085

`∩[A005098(n+1), A095278(n+1)+1]`
-/

namespace A045753.P1191364199737223085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045753.P1191364199737223085

namespace A045753

/-- `∩[A005098(n+1), A095278(n+1)+1]` -/
def P1191364199737223085.Spec : Prop :=
  ∀ n, (P1191364199737223085.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P10185267114477240967

`eq[1, A171487(2*(n+1))]+1`
-/

namespace A045753.P10185267114477240967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171487 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045753.P10185267114477240967

namespace A045753

/-- `eq[1, A171487(2*(n+1))]+1` -/
def P10185267114477240967.Spec : Prop :=
  ∀ n, (P10185267114477240967.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P3846231701831777856

`record[(A006530(p?[4*n-1]+2)-1)/4]`
-/

namespace A045753.P3846231701831777856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2).toNat - 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045753.P3846231701831777856

namespace A045753

/-- `record[(A006530(p?[4*n-1]+2)-1)/4]` -/
def P3846231701831777856.Spec : Prop :=
  ∀ n, P3846231701831777856.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P17993086882237120913

`A000010(A071698(n+1)+2)/4`
-/

namespace A045753.P17993086882237120913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A071698 (n + 1) + 2).toNat : ℚ) / 4

end

end A045753.P17993086882237120913

namespace A045753

/-- `A000010(A071698(n+1)+2)/4` -/
def P17993086882237120913.Spec : Prop :=
  ∀ n, P17993086882237120913.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P17182689021669721161

`A000203(A122564(Δ[n²]))/4`
-/

namespace A045753.P17182689021669721161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A122564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 4

end

end A045753.P17182689021669721161

namespace A045753

/-- `A000203(A122564(Δ[n²]))/4` -/
def P17182689021669721161.Spec : Prop :=
  ∀ n, P17182689021669721161.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P5167037445338605864

`lt[4*(n+1)*A292438(a(n-1)), n/2]` with `a(0)=6`
-/

namespace A045753.P5167037445338605864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  (4 * (n + 1) : ℤ) * A292438 (f1 (n - 1)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A045753.P5167037445338605864

namespace A045753

/-- `lt[4*(n+1)*A292438(a(n-1)), n/2]` -/
def P5167037445338605864.Spec : Prop :=
  ∀ n, (P5167037445338605864.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P5277043924833545376

`A103391(A071699(n+1)+2)-2`
-/

namespace A045753.P5277043924833545376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A071699 (n + 1) + 2).toNat - 2

end

end A045753.P5277043924833545376

namespace A045753

/-- `A103391(A071699(n+1)+2)-2` -/
def P5277043924833545376.Spec : Prop :=
  ∀ n, P5277043924833545376.a n = A045753 (n + 1)

end A045753

/-! ## A045753.P10184223923168275942

`∩[A168497(n+2), A298474(n+2)]/2`
-/

namespace A045753.P10184223923168275942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298474 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A045753.P10184223923168275942

namespace A045753

/-- `∩[A168497(n+2), A298474(n+2)]/2` -/
def P10184223923168275942.Spec : Prop :=
  ∀ n, P10184223923168275942.a n = (A045753 (n + 1) : ℚ)

end A045753

/-! ## A045753.P9970799652208608023

`eq[2, A116982(n+1)]+1`
-/

namespace A045753.P9970799652208608023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045753.P9970799652208608023

namespace A045753

/-- `eq[2, A116982(n+1)]+1` -/
def P9970799652208608023.Spec : Prop :=
  ∀ n, (P9970799652208608023.a n : ℤ) = A045753 (n + 1)

end A045753

/-! ## A045753.P9287172036067822156

`∩[A040040(n+1), A004277(n)]/2`
-/

namespace A045753.P9287172036067822156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A045753.P9287172036067822156

namespace A045753

/-- `∩[A040040(n+1), A004277(n)]/2` -/
def P9287172036067822156.Spec : Prop :=
  ∀ n, P9287172036067822156.a n = (A045753 (n + 1) : ℚ)

end A045753

/-!
# A045754: 7-fold factorials: a(n) = Product_{k=0..n-1} (7*k+1).

The programs for A045754, there is no canonical definition to state claims against.
-/

/-! ## A045754.P5075551207643168317

`∏[a(n-1)+7]` with `a(0)=1, a(1)=1`
-/

namespace A045754.P5075551207643168317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045754.P5075551207643168317

/-! ## A045754.P7650386300975756525

`(7*n-6)*a(n-1)` with `a(0)=1`
-/

namespace A045754.P7650386300975756525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 * n : ℤ) - 6) * a (n - 1)

end

end A045754.P7650386300975756525

/-! ## A045754.P8681006255175129585

`∏[A081581(∑[n]+1)]`
-/

namespace A045754.P8681006255175129585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081581 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045754.P8681006255175129585

/-! ## A045754.P7764033393825765202

`a(n-1)*A016993(n-1)` with `a(0)=1`
-/

namespace A045754.P7764033393825765202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A016993 (n - 1)

end

end A045754.P7764033393825765202

/-! ## A045754.P11292489845867106105

`a(n-1)*A047274(2*n)` with `a(0)=1`
-/

namespace A045754.P11292489845867106105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047274 (2 * n)

end

end A045754.P11292489845867106105

/-!
# A045755: 8-fold factorials: a(n) = Product_{k=0..n-1} (8*k+1).

The programs for A045755, there is no canonical definition to state claims against.
-/

/-! ## A045755.P5259002890946294188

`∏[a(n-1)+8]` with `a(0)=1, a(1)=1`
-/

namespace A045755.P5259002890946294188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045755.P5259002890946294188

/-! ## A045755.P6741663075815230842

`∏[lcm(4, 1-2*n)-3]`
-/

namespace A045755.P6741663075815230842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - (2 * n : ℤ)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045755.P6741663075815230842

/-! ## A045755.P12091299751885972290

`(8*n-7)*a(n-1)` with `a(0)=1`
-/

namespace A045755.P12091299751885972290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((8 * n : ℤ) - 7) * a (n - 1)

end

end A045755.P12091299751885972290

/-! ## A045755.P17754817463437982243

`∏[8*(n-1)%(n+1)+1]`
-/

namespace A045755.P17754817463437982243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045755.P17754817463437982243

/-! ## A045755.P1498104600712164951

`∏[Δ[(abs(1-2*n)-2)²]+1]`
-/

namespace A045755.P1498104600712164951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (2 * n : ℤ)| - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045755.P1498104600712164951

/-!
# A045756: Expansion of e.g.f. (1-9*x)^(-1/9), 9-factorial numbers.

The programs for A045756, there is no canonical definition to state claims against.
-/

/-! ## A045756.P641625681854823243

`∏[a(n-1)+9]` with `a(0)=1, a(1)=1`
-/

namespace A045756.P641625681854823243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045756.P641625681854823243

/-! ## A045756.P16882371555019355658

`(9*n-8)*a(n-1)` with `a(0)=1`
-/

namespace A045756.P16882371555019355658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 * n : ℤ) - 8) * a (n - 1)

end

end A045756.P16882371555019355658

/-! ## A045756.P10780803985475705357

`A223512(∑[abs(1-n)])`
-/

namespace A045756.P10780803985475705357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045756.P10780803985475705357

/-! ## A045756.P2847316167324874086

`A392037(∑[n+1]+1)`
-/

namespace A045756.P2847316167324874086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045756.P2847316167324874086

/-! ## A045756.P11060510579576370069

`∏[A181390(n+1)+n]`
-/

namespace A045756.P11060510579576370069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045756.P11060510579576370069

/-!
# A045757: 10-factorial numbers.

The programs for A045757, there is no canonical definition to state claims against.
-/

/-! ## A045757.P8436576292373798978

`∏[10*n+1]`
-/

namespace A045757.P8436576292373798978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045757.P8436576292373798978

/-! ## A045757.P15113245661801721965

`abs(∏[a(n-1)+10])` with `a(0)=1`
-/

namespace A045757.P15113245661801721965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045757.P15113245661801721965

/-! ## A045757.P15299816054846813707

`floor(∏[a(n-1)+10])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A045757.P15299816054846813707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045757.P15299816054846813707

/-! ## A045757.P15187443998811239068

`ceil(∏[a(n-1)+10])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A045757.P15187443998811239068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045757.P15187443998811239068

/-! ## A045757.P3760109563530593609

`round(∏[a(n-1)+10])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A045757.P3760109563530593609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A045757.P3760109563530593609

/-!
# A045761: Define polynomials Pn by P0 = 0, P1 = x, P2 = P1 + P0, P3 = P2 * P1, P4 = P3 + P2, etc. alternately adding or multiplying. For even n > 2k, then first k coefficients of Pn remain unchanged and their values are the first k terms of the sequence.

The programs for A045761, there is no canonical definition to state claims against.
-/

/-! ## A045761.P3312793319696621351

`A051889(A036617(n)-A182270(n))`
-/

namespace A045761.P3312793319696621351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A036617 n - A182270 n).toNat

end

end A045761.P3312793319696621351

/-! ## A045761.P6750856538203665119

`A051889(A251691(n)-A034008(n))`
-/

namespace A045761.P6750856538203665119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A251691 n - A034008 n).toNat

end

end A045761.P6750856538203665119

/-! ## A045761.P13876129769758286848

`A051889(A036617(n)-A321361(n))`
-/

namespace A045761.P13876129769758286848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A036617 n - A321361 n).toNat

end

end A045761.P13876129769758286848

/-! ## A045761.P16563031591149683596

`A051889(A036617(n)-A321374(n))`
-/

namespace A045761.P16563031591149683596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A036617 n - A321374 n).toNat

end

end A045761.P16563031591149683596

/-! ## A045761.P17439588237860101693

`A051889(A036617(n)-A321375(n))`
-/

namespace A045761.P17439588237860101693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A036617 n - A321375 n).toNat

end

end A045761.P17439588237860101693

/-!
# A045762: Numbers k such that 2^k - 1 is not a prime.

The programs for A045762, the canonical program `A045762.P4093010058980405591` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045762 has offset 1).

The definition of A045762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045762.P15138113532355199070

`comp[A000043(n+1)]`
-/

namespace A045762.P15138113532355199070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P15138113532355199070

namespace A045762

/-- `comp[A000043(n+1)]` -/
def P15138113532355199070.Spec : Prop :=
  ∀ n, (P15138113532355199070.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P9115508472628677887

`comp[p?[A048737(n+1)]]`
-/

namespace A045762.P9115508472628677887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P9115508472628677887

namespace A045762

/-- `comp[p?[A048737(n+1)]]` -/
def P9115508472628677887.Spec : Prop :=
  ∀ n, (P9115508472628677887.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P4093010058980405591

`comp[p?[A072226(n+1)]]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A045762

/-- `comp[p?[A072226(n+1)]]` -/
def P4093010058980405591.Spec : Prop :=
  ∀ n, (P4093010058980405591.a n : ℤ) = A045762 (n + 1)

theorem P4093010058980405591.correct : P4093010058980405591.Spec := by
  intro n
  simp only [A045762, Nat.add_sub_cancel]

end A045762

/-! ## A045762.P15234242129282996264

`comp[A090748(n+1)+1]`
-/

namespace A045762.P15234242129282996264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P15234242129282996264

namespace A045762

/-- `comp[A090748(n+1)+1]` -/
def P15234242129282996264.Spec : Prop :=
  ∀ n, (P15234242129282996264.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P4663666947041989782

`comp[A050475(n+1)-1]`
-/

namespace A045762.P4663666947041989782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P4663666947041989782

namespace A045762

/-- `comp[A050475(n+1)-1]` -/
def P4663666947041989782.Spec : Prop :=
  ∀ n, (P4663666947041989782.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P3100302258828280480

`comp[A153798(n+1)+2]`
-/

namespace A045762.P3100302258828280480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P3100302258828280480

namespace A045762

/-- `comp[A153798(n+1)+2]` -/
def P3100302258828280480.Spec : Prop :=
  ∀ n, (P3100302258828280480.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P9306283143534274592

`∪[A054723(n+1), A141468(n+1)]`
-/

namespace A045762.P9306283143534274592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045762.P9306283143534274592

namespace A045762

/-- `∪[A054723(n+1), A141468(n+1)]` -/
def P9306283143534274592.Spec : Prop :=
  ∀ n, (P9306283143534274592.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P8337289145100482137

`comp[A139117(n+1)-A139116(n+1)]`
-/

namespace A045762.P8337289145100482137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139117 (n + 1) - A139116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P8337289145100482137

namespace A045762

/-- `comp[A139117(n+1)-A139116(n+1)]` -/
def P8337289145100482137.Spec : Prop :=
  ∀ n, (P8337289145100482137.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P16680330811013377276

`lt[1, A126717(n)]`
-/

namespace A045762.P16680330811013377276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045762.P16680330811013377276

namespace A045762

/-- `lt[1, A126717(n)]` -/
def P16680330811013377276.Spec : Prop :=
  ∀ n, (P16680330811013377276.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P17684048887220761745

`lt[A059959(n), (1-A059959(n))²]`
-/

namespace A045762.P17684048887220761745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A059959 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045762.P17684048887220761745

namespace A045762

/-- `lt[A059959(n), (1-A059959(n))²]` -/
def P17684048887220761745.Spec : Prop :=
  ∀ n, (P17684048887220761745.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P11387733361812320847

`comp[p?[A161508(n+1)]]`
-/

namespace A045762.P11387733361812320847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045762.P11387733361812320847

namespace A045762

/-- `comp[p?[A161508(n+1)]]` -/
def P11387733361812320847.Spec : Prop :=
  ∀ n, (P11387733361812320847.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P7342045810439433377

`lt[1, A085427(n)]`
-/

namespace A045762.P7342045810439433377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045762.P7342045810439433377

namespace A045762

/-- `lt[1, A085427(n)]` -/
def P7342045810439433377.Spec : Prop :=
  ∀ n, (P7342045810439433377.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P115435751163892243

`lt[n+1, A181692(n)]`
-/

namespace A045762.P115435751163892243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045762.P115435751163892243

namespace A045762

/-- `lt[n+1, A181692(n)]` -/
def P115435751163892243.Spec : Prop :=
  ∀ n, (P115435751163892243.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P17326280714935775442

`lt[1, A000032(A046800(n))]`
-/

namespace A045762.P17326280714935775442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A046800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045762.P17326280714935775442

namespace A045762

/-- `lt[1, A000032(A046800(n))]` -/
def P17326280714935775442.Spec : Prop :=
  ∀ n, (P17326280714935775442.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P13610025132808467338

`lt[A046800(n), A028310(A046800(n)²)]`
-/

namespace A045762.P13610025132808467338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046800 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045762.P13610025132808467338

namespace A045762

/-- `lt[A046800(n), A028310(A046800(n)²)]` -/
def P13610025132808467338.Spec : Prop :=
  ∀ n, (P13610025132808467338.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P17943046205294634022

`lt[0, A127587(n)]`
-/

namespace A045762.P17943046205294634022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045762.P17943046205294634022

namespace A045762

/-- `lt[0, A127587(n)]` -/
def P17943046205294634022.Spec : Prop :=
  ∀ n, (P17943046205294634022.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P15636077522296527510

`comp[eq[0, A127587(n)]]%A134659(n)`
-/

namespace A045762.P15636077522296527510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A134659 n)

end

end A045762.P15636077522296527510

namespace A045762

/-- `comp[eq[0, A127587(n)]]%A134659(n)` -/
def P15636077522296527510.Spec : Prop :=
  ∀ n, P15636077522296527510.a n = A045762 (n + 1)

end A045762

/-! ## A045762.P2809283680849963611

`lt[A152057(n)/2, A152046(n)]`
-/

namespace A045762.P2809283680849963611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152057 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A045762.P2809283680849963611

namespace A045762

/-- `lt[A152057(n)/2, A152046(n)]` -/
def P2809283680849963611.Spec : Prop :=
  ∀ n, (P2809283680849963611.a n : ℤ) = A045762 (n + 1)

end A045762

/-! ## A045762.P14334151314388802998

`lt[A152057(n), A152046(n+1)]`
-/

namespace A045762.P14334151314388802998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045762.P14334151314388802998

namespace A045762

/-- `lt[A152057(n), A152046(n+1)]` -/
def P14334151314388802998.Spec : Prop :=
  ∀ n, (P14334151314388802998.a n : ℤ) = A045762 (n + 1)

end A045762

/-!
# A045763: Number of numbers "unrelated to n": m < n such that m is neither a divisor of n nor relatively prime to n.

The programs for A045763, the canonical program `A045763.P10750903732750680223` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045763 has offset 1).

The definition of A045763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045763.P789438619960045238

`n+1-∏{e}[n+1, #+1]-abs((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)`
-/

namespace A045763.P789438619960045238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) : ℚ) - |(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1|

end

end A045763.P789438619960045238

namespace A045763

/-- `n+1-∏{e}[n+1, #+1]-abs((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)` -/
def P789438619960045238.Spec : Prop :=
  ∀ n, P789438619960045238.a n = (A045763 (n + 1) : ℚ)

end A045763

/-! ## A045763.P1400994313848758233

`A046640(n+1)-1`
-/

namespace A045763.P1400994313848758233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - 1

end

end A045763.P1400994313848758233

namespace A045763

/-- `A046640(n+1)-1` -/
def P1400994313848758233.Spec : Prop :=
  ∀ n, P1400994313848758233.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P15764888625890994879

`1-A073757(n+1)+n`
-/

namespace A045763.P15764888625890994879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073757 (n + 1) + (n : ℤ)

end

end A045763.P15764888625890994879

namespace A045763

/-- `1-A073757(n+1)+n` -/
def P15764888625890994879.Spec : Prop :=
  ∀ n, P15764888625890994879.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P364054260276610965

`2-A061468(n+1)+n`
-/

namespace A045763.P364054260276610965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A061468 (n + 1) + (n : ℤ)

end

end A045763.P364054260276610965

namespace A045763

/-- `2-A061468(n+1)+n` -/
def P364054260276610965.Spec : Prop :=
  ∀ n, P364054260276610965.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P15684496223774512750

`(n+1-A083245(n+1))/2`
-/

namespace A045763.P15684496223774512750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A083245 (n + 1) : ℚ) / 2

end

end A045763.P15684496223774512750

namespace A045763

/-- `(n+1-A083245(n+1))/2` -/
def P15684496223774512750.Spec : Prop :=
  ∀ n, P15684496223774512750.a n = (A045763 (n + 1) : ℚ)

end A045763

/-! ## A045763.P12583096213049439495

`A243823(n+1)+A243822(n+1)`
-/

namespace A045763.P12583096213049439495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) + A243822 (n + 1)

end

end A045763.P12583096213049439495

namespace A045763

/-- `A243823(n+1)+A243822(n+1)` -/
def P12583096213049439495.Spec : Prop :=
  ∀ n, P12583096213049439495.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P12218565369294714347

`A378216(n+1)+A219428(n+1)`
-/

namespace A045763.P12218565369294714347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A219428 (n + 1)

end

end A045763.P12218565369294714347

namespace A045763

/-- `A378216(n+1)+A219428(n+1)` -/
def P12218565369294714347.Spec : Prop :=
  ∀ n, P12218565369294714347.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P1245198907819175672

`A062968(n+1)-A000010(n+1)`
-/

namespace A045763.P1245198907819175672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A000010 (n + 1)

end

end A045763.P1245198907819175672

namespace A045763

/-- `A062968(n+1)-A000010(n+1)` -/
def P1245198907819175672.Spec : Prop :=
  ∀ n, P1245198907819175672.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P17468761331595862498

`A051953(n+1)-A032741(n+1)`
-/

namespace A045763.P17468761331595862498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A032741 (n + 1)

end

end A045763.P17468761331595862498

namespace A045763

/-- `A051953(n+1)-A032741(n+1)` -/
def P17468761331595862498.Spec : Prop :=
  ∀ n, P17468761331595862498.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P10750903732750680223

`A016035(n+1)-A070824(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045763

/-- `A016035(n+1)-A070824(n+1)` -/
def P10750903732750680223.Spec : Prop :=
  ∀ n, P10750903732750680223.a n = A045763 (n + 1)

theorem P10750903732750680223.correct : P10750903732750680223.Spec := by
  intro n
  simp only [A045763, Nat.add_sub_cancel]

end A045763

/-! ## A045763.P12018555936499083898

`A059292(n+1)-A039649(n+1)`
-/

namespace A045763.P12018555936499083898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - A039649 (n + 1)

end

end A045763.P12018555936499083898

namespace A045763

/-- `A059292(n+1)-A039649(n+1)` -/
def P12018555936499083898.Spec : Prop :=
  ∀ n, P12018555936499083898.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P8996173743614253604

`A057860(n+1)-A055212(n+1)`
-/

namespace A045763.P8996173743614253604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057860 (n + 1) - A055212 (n + 1)

end

end A045763.P8996173743614253604

namespace A045763

/-- `A057860(n+1)-A055212(n+1)` -/
def P8996173743614253604.Spec : Prop :=
  ∀ n, P8996173743614253604.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P3667948260542117149

`A049820(n+1)-A109606(n+1)`
-/

namespace A045763.P3667948260542117149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A109606 (n + 1)

end

end A045763.P3667948260542117149

namespace A045763

/-- `A049820(n+1)-A109606(n+1)` -/
def P3667948260542117149.Spec : Prop :=
  ∀ n, P3667948260542117149.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P17439045791549480888

`A152993(n+1)-A037228(n+1)`
-/

namespace A045763.P17439045791549480888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (n + 1) - A037228 (n + 1)

end

end A045763.P17439045791549480888

namespace A045763

/-- `A152993(n+1)-A037228(n+1)` -/
def P17439045791549480888.Spec : Prop :=
  ∀ n, P17439045791549480888.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P1488107181349675469

`A152770(n+1)-A051709(n+1)`
-/

namespace A045763.P1488107181349675469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A051709 (n + 1)

end

end A045763.P1488107181349675469

namespace A045763

/-- `A152770(n+1)-A051709(n+1)` -/
def P1488107181349675469.Spec : Prop :=
  ∀ n, P1488107181349675469.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P8310564712165755993

`A053158(n+1)-A158907(n+1)`
-/

namespace A045763.P8310564712165755993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A158907 (n + 1)

end

end A045763.P8310564712165755993

namespace A045763

/-- `A053158(n+1)-A158907(n+1)` -/
def P8310564712165755993.Spec : Prop :=
  ∀ n, P8310564712165755993.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P6167123414576086040

`A016035(n+1)+1-A325765(n)`
-/

namespace A045763.P6167123414576086040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + (1 - A325765 n)

end

end A045763.P6167123414576086040

namespace A045763

/-- `A016035(n+1)+1-A325765(n)` -/
def P6167123414576086040.Spec : Prop :=
  ∀ n, P6167123414576086040.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P4422432251144990318

`A158901(n+1)-A209187(n+1)`
-/

namespace A045763.P4422432251144990318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - A209187 (n + 1)

end

end A045763.P4422432251144990318

namespace A045763

/-- `A158901(n+1)-A209187(n+1)` -/
def P4422432251144990318.Spec : Prop :=
  ∀ n, P4422432251144990318.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P3724267453759876110

`A264441(n+1)%A046640(n+1)`
-/

namespace A045763.P3724267453759876110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264441 (n + 1)) (A046640 (n + 1))

end

end A045763.P3724267453759876110

namespace A045763

/-- `A264441(n+1)%A046640(n+1)` -/
def P3724267453759876110.Spec : Prop :=
  ∀ n, P3724267453759876110.a n = A045763 (n + 1)

end A045763

/-! ## A045763.P7703039222241820147

`A049820(n+1)+1-A000010(n+1)`
-/

namespace A045763.P7703039222241820147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (1 - A000010 (n + 1))

end

end A045763.P7703039222241820147

namespace A045763

/-- `A049820(n+1)+1-A000010(n+1)` -/
def P7703039222241820147.Spec : Prop :=
  ∀ n, P7703039222241820147.a n = A045763 (n + 1)

end A045763

/-!
# A045764: n + 1 - d(n) - phi(n) never takes these values (conjecture).

The programs for A045764, there is no canonical definition to state claims against.
-/

/-! ## A045764.P10193883338141233281

`eq[0, A070298(n+1)]+1`
-/

namespace A045764.P10193883338141233281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045764.P10193883338141233281

/-! ## A045764.P13715629168465021403

`eq[0, A070298(A028310(n))]`
-/

namespace A045764.P13715629168465021403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045764.P13715629168465021403

/-! ## A045764.P8528829838007698862

`A020725(eq[0, A070298(n+1)])`
-/

namespace A045764.P8528829838007698862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045764.P8528829838007698862

/-! ## A045764.P9482562440915824969

`lt[A070298(n+1), A007318(C(2, n))]+1`
-/

namespace A045764.P9482562440915824969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A045764.P9482562440915824969

/-! ## A045764.P18282955602332394343

`lt[A070298(n+1), A354097(A070298(n+1)+1)]+1`
-/

namespace A045764.P18282955602332394343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354097 (A070298 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A045764.P18282955602332394343

/-!
# A045765: k - d(k) never takes these values, where d(k) = A000005(k).

The programs for A045765, the canonical program `A045765.P13008518942715425430` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045765 has offset 1).

The definition of A045765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045765.P3724933836086462305

`eq[0, A060990(n)]`
-/

namespace A045765.P3724933836086462305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P3724933836086462305

namespace A045765

/-- `eq[0, A060990(n)]` -/
def P3724933836086462305.Spec : Prop :=
  ∀ n, (P3724933836086462305.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P4430407178845123029

`eq[0, A082284(n)]`
-/

namespace A045765.P4430407178845123029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P4430407178845123029

namespace A045765

/-- `eq[0, A082284(n)]` -/
def P4430407178845123029.Spec : Prop :=
  ∀ n, (P4430407178845123029.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P10261266415510258922

`eq[0, A266110(n)]`
-/

namespace A045765.P10261266415510258922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P10261266415510258922

namespace A045765

/-- `eq[0, A266110(n)]` -/
def P10261266415510258922.Spec : Prop :=
  ∀ n, (P10261266415510258922.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P5235063543643807031

`eq[n, A266116(n)]`
-/

namespace A045765.P5235063543643807031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P5235063543643807031

namespace A045765

/-- `eq[n, A266116(n)]` -/
def P5235063543643807031.Spec : Prop :=
  ∀ n, (P5235063543643807031.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P10999803777918375898

`lt[A082284(n+1), 1]+1`
-/

namespace A045765.P10999803777918375898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A045765.P10999803777918375898

namespace A045765

/-- `lt[A082284(n+1), 1]+1` -/
def P10999803777918375898.Spec : Prop :=
  ∀ n, (P10999803777918375898.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P13008518942715425430

`comp[1-A000005(n+1)+n]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045765

/-- `comp[1-A000005(n+1)+n]` -/
def P13008518942715425430.Spec : Prop :=
  ∀ n, (P13008518942715425430.a n : ℤ) = A045765 (n + 1)

theorem P13008518942715425430.correct : P13008518942715425430.Spec := by
  intro n
  simp only [A045765, Nat.add_sub_cancel]

end A045765

/-! ## A045765.P2982249195578990340

`eq[1, A262695(n)]`
-/

namespace A045765.P2982249195578990340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P2982249195578990340

namespace A045765

/-- `eq[1, A262695(n)]` -/
def P2982249195578990340.Spec : Prop :=
  ∀ n, (P2982249195578990340.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P6406842031781296721

`eq[1, A262697(n)]`
-/

namespace A045765.P6406842031781296721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P6406842031781296721

namespace A045765

/-- `eq[1, A262697(n)]` -/
def P6406842031781296721.Spec : Prop :=
  ∀ n, (P6406842031781296721.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P10539923694567397439

`lt[A262697(n), A262696(A262696(n))]`
-/

namespace A045765.P10539923694567397439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 (A262696 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045765.P10539923694567397439

namespace A045765

/-- `lt[A262697(n), A262696(A262696(n))]` -/
def P10539923694567397439.Spec : Prop :=
  ∀ n, (P10539923694567397439.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P3626110847149110445

`eq[0, A262686(n)]`
-/

namespace A045765.P3626110847149110445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P3626110847149110445

namespace A045765

/-- `eq[0, A262686(n)]` -/
def P3626110847149110445.Spec : Prop :=
  ∀ n, (P3626110847149110445.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P7172537426002646911

`eq[0, A264970(n)]`
-/

namespace A045765.P7172537426002646911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P7172537426002646911

namespace A045765

/-- `eq[0, A264970(n)]` -/
def P7172537426002646911.Spec : Prop :=
  ∀ n, (P7172537426002646911.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P10850653317677850072

`eq[1, A264971(n)]`
-/

namespace A045765.P10850653317677850072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P10850653317677850072

namespace A045765

/-- `eq[1, A264971(n)]` -/
def P10850653317677850072.Spec : Prop :=
  ∀ n, (P10850653317677850072.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P6758361072936401427

`eq[1, A266111(n)]`
-/

namespace A045765.P6758361072936401427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P6758361072936401427

namespace A045765

/-- `eq[1, A266111(n)]` -/
def P6758361072936401427.Spec : Prop :=
  ∀ n, (P6758361072936401427.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P151407262725656924

`eq[n, A262522(A028310(n))]`
-/

namespace A045765.P151407262725656924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045765.P151407262725656924

namespace A045765

/-- `eq[n, A262522(A028310(n))]` -/
def P151407262725656924.Spec : Prop :=
  ∀ n, (P151407262725656924.a n : ℤ) = A045765 (n + 1)

end A045765

/-! ## A045765.P5893000689598590931

`comp[A049820(n+1)]%A324709(3*n+4)`
-/

namespace A045765.P5893000689598590931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A324709 (3 * n + 4))

end

end A045765.P5893000689598590931

namespace A045765

/-- `comp[A049820(n+1)]%A324709(3*n+4)` -/
def P5893000689598590931.Spec : Prop :=
  ∀ n, P5893000689598590931.a n = A045765 (n + 1)

end A045765

/-! ## A045765.P11728544975795136951

`A262898(∑[n]+1)`
-/

namespace A045765.P11728544975795136951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A045765.P11728544975795136951

namespace A045765

/-- `A262898(∑[n]+1)` -/
def P11728544975795136951.Spec : Prop :=
  ∀ n, P11728544975795136951.a n = A045765 (n + 1)

end A045765

/-! ## A045765.P17702338363237618399

`record[A262898(n+1)]`
-/

namespace A045765.P17702338363237618399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045765.P17702338363237618399

namespace A045765

/-- `record[A262898(n+1)]` -/
def P17702338363237618399.Spec : Prop :=
  ∀ n, P17702338363237618399.a n = A045765 (n + 1)

end A045765

/-!
# A045766: Number of prime factors of double factorials n!! (A006882), with multiplicity.

The programs for A045766, the canonical program `A045766.P10793017351796934949` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045766 has offset 1).

The definition of A045766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045766.P10793017351796934949

`∑{e}[n+1, #]+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045766

/-- `∑{e}[n+1, #]+a(n-2)` -/
def P10793017351796934949.Spec : Prop :=
  ∀ n, (P10793017351796934949.a n : ℤ) = A045766 (n + 1)

theorem P10793017351796934949.correct : P10793017351796934949.Spec := by
  intro n
  simp only [A045766, Nat.add_sub_cancel]

end A045766

/-! ## A045766.P16803504443010745109

`a(n-2)+log(∏{e}[n+1, exp(#)])` with `a(0)=0, a(1)=1`
-/

namespace A045766.P16803504443010745109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))

end

end A045766.P16803504443010745109

namespace A045766

/-- `a(n-2)+log(∏{e}[n+1, exp(#)])` -/
def P16803504443010745109.Spec : Prop :=
  ∀ n, P16803504443010745109.a n = (A045766 (n + 1) : ℝ)

end A045766

/-! ## A045766.P17319750938071444797

`A022559(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A045766.P17319750938071444797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A022559 (n + 1) - a (n - 1)

end

end A045766.P17319750938071444797

namespace A045766

/-- `A022559(n+1)-a(n-1)` -/
def P17319750938071444797.Spec : Prop :=
  ∀ n, P17319750938071444797.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P6213956454755185722

`A001222(n+1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A045766.P6213956454755185722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001222 (n + 1) + a (n - 2)

end

end A045766.P6213956454755185722

namespace A045766

/-- `A001222(n+1)+a(n-2)` -/
def P6213956454755185722.Spec : Prop :=
  ∀ n, P6213956454755185722.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P5037462158599006544

`a(n-2)+A086436(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A045766.P5037462158599006544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A086436 (n + 1)

end

end A045766.P5037462158599006544

namespace A045766

/-- `a(n-2)+A086436(n+1)` -/
def P5037462158599006544.Spec : Prop :=
  ∀ n, P5037462158599006544.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P6289873837881678307

`a(n-2)+log2(A061142(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A045766.P6289873837881678307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A045766.P6289873837881678307

namespace A045766

/-- `a(n-2)+log2(A061142(n+1))` -/
def P6289873837881678307.Spec : Prop :=
  ∀ n, P6289873837881678307.a n = (A045766 (n + 1) : ℝ)

end A045766

/-! ## A045766.P8007573565312574466

`a(n-2)+A252736(n+1)+1` with `a(0)=0, a(1)=1`
-/

namespace A045766.P8007573565312574466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (A252736 (n + 1) + 1)

end

end A045766.P8007573565312574466

namespace A045766

/-- `a(n-2)+A252736(n+1)+1` -/
def P8007573565312574466.Spec : Prop :=
  ∀ n, P8007573565312574466.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P14475978087501951628

`a(n-2)+val(A124508(n+1), 2)` with `a(0)=0, a(1)=1`
-/

namespace A045766.P14475978087501951628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2

end

end A045766.P14475978087501951628

namespace A045766

/-- `a(n-2)+val(A124508(n+1), 2)` -/
def P14475978087501951628.Spec : Prop :=
  ∀ n, (P14475978087501951628.a n : ℤ) = A045766 (n + 1)

end A045766

/-! ## A045766.P18222809362598490203

`∑[A001222(2*n-(n-1))-a(n-1)]` with `a(0)=0`
-/

namespace A045766.P18222809362598490203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045766.P18222809362598490203

namespace A045766

/-- `∑[A001222(2*n-(n-1))-a(n-1)]` -/
def P18222809362598490203.Spec : Prop :=
  ∀ n, P18222809362598490203.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P3942010843502221239

`a(n-2)-Δ[a(n-1)-A001222(n)]` with `a(0)=0, a(1)=1`
-/

namespace A045766.P3942010843502221239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - A001222 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A045766.P3942010843502221239

namespace A045766

/-- `a(n-2)-Δ[a(n-1)-A001222(n)]` -/
def P3942010843502221239.Spec : Prop :=
  ∀ n, P3942010843502221239.a n = A045766 (n + 1)

end A045766

/-! ## A045766.P1582076016337234917

`Δ[A022559(n)]+a(A289207(n))` with `a(0)=0`
-/

namespace A045766.P1582076016337234917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (A289207 n).toNat

end

end A045766.P1582076016337234917

namespace A045766

/-- `Δ[A022559(n)]+a(A289207(n))` -/
def P1582076016337234917.Spec : Prop :=
  ∀ n, P1582076016337234917.a n = A045766 (n + 1)

end A045766

/-!
# A045767: Number of prime factors of triple factorials n!!! (A007661), with multiplicity.

The programs for A045767, the canonical program `A045767.P716574645843820968` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045767 has offset 1).

The definition of A045767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045767.P716574645843820968

`∑{e}[n+1, #]+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045767

/-- `∑{e}[n+1, #]+a(n-3)` -/
def P716574645843820968.Spec : Prop :=
  ∀ n, (P716574645843820968.a n : ℤ) = A045767 (n + 1)

theorem P716574645843820968.correct : P716574645843820968.Spec := by
  intro n
  simp only [A045767, Nat.add_sub_cancel]

end A045767

/-! ## A045767.P596180182682434291

`a(n-3)+log2(∏{e}[n+1, 2^#])` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P596180182682434291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A045767.P596180182682434291

namespace A045767

/-- `a(n-3)+log2(∏{e}[n+1, 2^#])` -/
def P596180182682434291.Spec : Prop :=
  ∀ n, P596180182682434291.a n = (A045767 (n + 1) : ℝ)

end A045767

/-! ## A045767.P17896129485445268577

`Δ[A022559(n)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A045767.P17896129485445268577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A022559 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045767.P17896129485445268577

namespace A045767

/-- `Δ[A022559(n)+a(n-3)]` -/
def P17896129485445268577.Spec : Prop :=
  ∀ n, P17896129485445268577.a n = A045767 (n + 1)

end A045767

/-! ## A045767.P9917799190889819311

`A001222(n+1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P9917799190889819311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A001222 (n + 1) + a (n - 3)

end

end A045767.P9917799190889819311

namespace A045767

/-- `A001222(n+1)+a(n-3)` -/
def P9917799190889819311.Spec : Prop :=
  ∀ n, P9917799190889819311.a n = A045767 (n + 1)

end A045767

/-! ## A045767.P12540938864073360902

`a(n-3)+log2(sqrt(A165825(n+1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P12540938864073360902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Real.logb 2 (Real.sqrt (A165825 (n + 1) : ℝ))

end

end A045767.P12540938864073360902

namespace A045767

/-- `a(n-3)+log2(sqrt(A165825(n+1)))` -/
def P12540938864073360902.Spec : Prop :=
  ∀ n, P12540938864073360902.a n = (A045767 (n + 1) : ℝ)

end A045767

/-! ## A045767.P10413142609857850905

`a(n-3)-(1-A000005(A061142(n+1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P10413142609857850905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) - (1 - A000005 (A061142 (n + 1)).toNat)

end

end A045767.P10413142609857850905

namespace A045767

/-- `a(n-3)-(1-A000005(A061142(n+1)))` -/
def P10413142609857850905.Spec : Prop :=
  ∀ n, P10413142609857850905.a n = A045767 (n + 1)

end A045767

/-! ## A045767.P4658949988701130639

`a(n-3)+A022559(n+1)-A022559(n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P4658949988701130639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (A022559 (n + 1) - A022559 n)

end

end A045767.P4658949988701130639

namespace A045767

/-- `a(n-3)+A022559(n+1)-A022559(n)` -/
def P4658949988701130639.Spec : Prop :=
  ∀ n, P4658949988701130639.a n = A045767 (n + 1)

end A045767

/-! ## A045767.P7266189481843923427

`a(n-3)+A305716(n+1)-2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P7266189481843923427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (A305716 (n + 1) - 2)

end

end A045767.P7266189481843923427

namespace A045767

/-- `a(n-3)+A305716(n+1)-2` -/
def P7266189481843923427.Spec : Prop :=
  ∀ n, P7266189481843923427.a n = A045767 (n + 1)

end A045767

/-!
# A045768: Numbers k such that sigma(k) == 2 (mod k).

The programs for A045768, there is no canonical definition to state claims against.
-/

/-! ## A045768.P13225882635138634014

`∏{e}[2^n, A088831(#)]`
-/

namespace A045768.P13225882635138634014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A088831 (Nat.factorization (f1 n) p)

end

end A045768.P13225882635138634014

/-! ## A045768.P13467610612907295249

`A088831(n*a(A369054(n)))` with `a(0)=1`
-/

namespace A045768.P13467610612907295249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088831 ((n : ℤ) * a (A369054 n).toNat).toNat

end

end A045768.P13467610612907295249

/-! ## A045768.P4801057599539197655

`A088831(A028310(n))^ceil(sin(n)²)`
-/

namespace A045768.P4801057599539197655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088831 (A028310 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A045768.P4801057599539197655

/-! ## A045768.P885912808228578161

`A088831(A028310(n))^A178334(n)`
-/

namespace A045768.P885912808228578161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088831 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A045768.P885912808228578161

/-! ## A045768.P12211146972985191802

`gcd(A018843(n), A088831(A028310(n)))`
-/

namespace A045768.P12211146972985191802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018843 n) (A088831 (A028310 n).toNat)

end

end A045768.P12211146972985191802

/-!
# A045771: Number of similar sublattices of index n^2 in root lattice D_4.

The programs for A045771, the canonical program `A045771.P7761879348311045879` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045771 has offset 1).

The definition of A045771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045771.P13305640580197703457

`A035292(A000265(n+1))`
-/

namespace A045771.P13305640580197703457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035292 (A000265 (n + 1)).toNat

end

end A045771.P13305640580197703457

namespace A045771

/-- `A035292(A000265(n+1))` -/
def P13305640580197703457.Spec : Prop :=
  ∀ n, P13305640580197703457.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P12631142622427383179

`A035292(A153733(n)+1)`
-/

namespace A045771.P12631142622427383179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035292 (A153733 n + 1).toNat

end

end A045771.P12631142622427383179

namespace A045771

/-- `A035292(A153733(n)+1)` -/
def P12631142622427383179.Spec : Prop :=
  ∀ n, P12631142622427383179.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P11170236655256123979

`A035292(2*A025480(n)+1)`
-/

namespace A045771.P11170236655256123979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035292 (2 * A025480 n + 1).toNat

end

end A045771.P11170236655256123979

namespace A045771

/-- `A035292(2*A025480(n)+1)` -/
def P11170236655256123979.Spec : Prop :=
  ∀ n, P11170236655256123979.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P7444115155016528271

`A035292(n+1)/A010684(n)`
-/

namespace A045771.P7444115155016528271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035292 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A045771.P7444115155016528271

namespace A045771

/-- `A035292(n+1)/A010684(n)` -/
def P7444115155016528271.Spec : Prop :=
  ∀ n, P7444115155016528271.a n = (A045771 (n + 1) : ℚ)

end A045771

/-! ## A045771.P11703592935837427119

`A035292(n+1)/A035312(and(2, -2*n))`
-/

namespace A045771.P11703592935837427119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035292 (n + 1) : ℚ) / (A035312 (Int.land 2 (-(2 * n : ℤ))).toNat : ℚ)

end

end A045771.P11703592935837427119

namespace A045771

/-- `A035292(n+1)/A035312(and(2, -2*n))` -/
def P11703592935837427119.Spec : Prop :=
  ∀ n, P11703592935837427119.a n = (A045771 (n + 1) : ℚ)

end A045771

/-! ## A045771.P13210162824789175672

`∑{d}[n+1, A115607(#)*A159634((n+1)/#)]`
-/

namespace A045771.P13210162824789175672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045771.P13210162824789175672

namespace A045771

/-- `∑{d}[n+1, A115607(#)*A159634((n+1)/#)]` -/
def P13210162824789175672.Spec : Prop :=
  ∀ n, P13210162824789175672.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P1686300049349813122

`∑{d}[n+1, A328487(#)*A359548((n+1)/#)]`
-/

namespace A045771.P1686300049349813122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328487 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045771.P1686300049349813122

namespace A045771

/-- `∑{d}[n+1, A328487(#)*A359548((n+1)/#)]` -/
def P1686300049349813122.Spec : Prop :=
  ∀ n, P1686300049349813122.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P7761879348311045879

`∑{d}[n+1, A035109(#-1)*A193356((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045771

/-- `∑{d}[n+1, A035109(#-1)*A193356((n+1)/#)]` -/
def P7761879348311045879.Spec : Prop :=
  ∀ n, P7761879348311045879.a n = A045771 (n + 1)

theorem P7761879348311045879.correct : P7761879348311045879.Spec := by
  intro n
  simp only [A045771, Nat.add_sub_cancel]

end A045771

/-! ## A045771.P1173630707306162616

`A035292(A005408(A025480(n)))`
-/

namespace A045771.P1173630707306162616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035292 (A005408 (A025480 n).toNat).toNat

end

end A045771.P1173630707306162616

namespace A045771

/-- `A035292(A005408(A025480(n)))` -/
def P1173630707306162616.Spec : Prop :=
  ∀ n, P1173630707306162616.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P18129064451460569880

`A035292(A025480(n)+A025480(n)+1)`
-/

namespace A045771.P18129064451460569880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035292 (A025480 n + (A025480 n + 1)).toNat

end

end A045771.P18129064451460569880

namespace A045771

/-- `A035292(A025480(n)+A025480(n)+1)` -/
def P18129064451460569880.Spec : Prop :=
  ∀ n, P18129064451460569880.a n = A045771 (n + 1)

end A045771

/-! ## A045771.P13015210033574809031

`A035292(n+1)/Δ[A042963(n+1)]`
-/

namespace A045771.P13015210033574809031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035292 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A045771.P13015210033574809031

namespace A045771

/-- `A035292(n+1)/Δ[A042963(n+1)]` -/
def P13015210033574809031.Spec : Prop :=
  ∀ n, P13015210033574809031.a n = (A045771 (n + 1) : ℚ)

end A045771

/-! ## A045771.P4991312456356218841

`A035292(2*(n+1))/3`
-/

namespace A045771.P4991312456356218841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035292 (2 * (n + 1)) : ℚ) / 3

end

end A045771.P4991312456356218841

namespace A045771

/-- `A035292(2*(n+1))/3` -/
def P4991312456356218841.Spec : Prop :=
  ∀ n, P4991312456356218841.a n = (A045771 (n + 1) : ℚ)

end A045771

/-!
# A045774: Extension of Beatty sequence; complement of A045775.

The programs for A045774, there is no canonical definition to state claims against.
-/

/-! ## A045774.P3753109934081855293

`comp[A045775(n+1)]`
-/

namespace A045774.P3753109934081855293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045774.P3753109934081855293

/-! ## A045774.P16383372934610310164

`(A045775(n)-2*n)/3`
-/

namespace A045774.P16383372934610310164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045775 n - (2 * n : ℤ) : ℚ) / 3

end

end A045774.P16383372934610310164

/-! ## A045774.P17836630904485973172

`floor((A045775(n)-A004273(n))/3)`
-/

namespace A045774.P17836630904485973172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045775 n - A004273 n : ℚ) / 3⌋

end

end A045774.P17836630904485973172

/-! ## A045774.P15404677276188075357

`A002264(A045775(n)-2*n)`
-/

namespace A045774.P15404677276188075357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045775 n - (2 * n : ℤ)).toNat

end

end A045774.P15404677276188075357

/-! ## A045774.P1827895139504727315

`A002264(A045775(n)-n-n)`
-/

namespace A045774.P1827895139504727315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045775 n - (n : ℤ) - (n : ℤ)).toNat

end

end A045774.P1827895139504727315

/-! ## A045774.P4096247716507101051

`A008611(A045775(n)-n)-A008611(n)`
-/

namespace A045774.P4096247716507101051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A045775 n - (n : ℤ)).toNat - A008611 n

end

end A045774.P4096247716507101051

/-!
# A045775: Extension of Beatty sequence; complement of A045774.

The programs for A045775, there is no canonical definition to state claims against.
-/

/-! ## A045775.P8044515668673871967

`3*A045774(n)+2*n`
-/

namespace A045775.P8044515668673871967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045774 n + (2 * n : ℤ)

end

end A045775.P8044515668673871967

/-! ## A045775.P6593812390480863222

`A008585(A045774(n))+2*n`
-/

namespace A045775.P6593812390480863222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045774 n).toNat + (2 * n : ℤ)

end

end A045775.P6593812390480863222

/-! ## A045775.P9790997054180379602

`A008585(n)-(n-A008585(A045774(n)))`
-/

namespace A045775.P9790997054180379602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A008585 (A045774 n).toNat)

end

end A045775.P9790997054180379602

/-! ## A045775.P2842827905217014415

`A008585(A045774(n)+n)-n`
-/

namespace A045775.P2842827905217014415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045774 n + (n : ℤ)).toNat - (n : ℤ)

end

end A045775.P2842827905217014415

/-! ## A045775.P10469637499703212056

`A008486(A045774(n)+n)-A028310(n)`
-/

namespace A045775.P10469637499703212056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045774 n + (n : ℤ)).toNat - A028310 n

end

end A045775.P10469637499703212056

/-! ## A045775.P2177462637784917402

`A008486(A045774(n)+n)-A008619(A004273(n))`
-/

namespace A045775.P2177462637784917402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045774 n + (n : ℤ)).toNat - A008619 (A004273 n).toNat

end

end A045775.P2177462637784917402

/-!
# A045776: a(n+1) is smallest multiple of (sum of digits of a(n)) which is > a(n).

The programs for A045776, the canonical program `A045776.P5877182421305232441` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045776 has offset 0).

The definition of A045776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 670 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045776.P5877182421305232441

`A062028(a(n-1))-a(n-1)%A007953(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045776

/-- `A062028(a(n-1))-a(n-1)%A007953(a(n-1))` -/
def P5877182421305232441.Spec : Prop :=
  ∀ n, P5877182421305232441.a n = A045776 n

theorem P5877182421305232441.correct : P5877182421305232441.Spec := by
  intro n
  simp only [A045776]

end A045776

/-! ## A045776.P17530334055532086604

`∑[dr(A000010(A034882(n+1)))]`
-/

namespace A045776.P17530334055532086604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000010 (A034882 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045776.P17530334055532086604

namespace A045776

/-- `∑[dr(A000010(A034882(n+1)))]` -/
def P17530334055532086604.Spec : Prop :=
  ∀ n, (P17530334055532086604.a n : ℤ) = A045776 n

end A045776

/-! ## A045776.P12657097240938335646

`∑[A040997(A000005(n!))]`
-/

namespace A045776.P12657097240938335646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040997 (A000005 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045776.P12657097240938335646

namespace A045776

/-- `∑[A040997(A000005(n!))]` -/
def P12657097240938335646.Spec : Prop :=
  ∀ n, P12657097240938335646.a n = A045776 n

end A045776

/-! ## A045776.P3596683683260076441

`∑[dr(A299852(A011782(n)))]`
-/

namespace A045776.P3596683683260076441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299852 (A011782 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045776.P3596683683260076441

namespace A045776

/-- `∑[dr(A299852(A011782(n)))]` -/
def P3596683683260076441.Spec : Prop :=
  ∀ n, (P3596683683260076441.a n : ℤ) = A045776 n

end A045776

/-! ## A045776.P10760253769917373455

`∑[A241494(A000005(∑{digits}[n, #!]))]`
-/

namespace A045776.P10760253769917373455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A000005 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045776.P10760253769917373455

namespace A045776

/-- `∑[A241494(A000005(∑{digits}[n, #!]))]` -/
def P10760253769917373455.Spec : Prop :=
  ∀ n, P10760253769917373455.a n = A045776 n

end A045776

/-!
# A045777: a(1)=1, a(2)=2; thereafter successive products of pairs of digits make further digits.

The programs for A045777, there is no canonical definition to state claims against.
-/

/-! ## A045777.P18336056257696356375

`A093094(A000007(n)+n)-A000007(n)`
-/

namespace A045777.P18336056257696356375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A045777.P18336056257696356375

/-! ## A045777.P6238435703133482375

`A093094(A233583(n+1))+A057427(n)-1`
-/

namespace A045777.P6238435703133482375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat + (A057427 n - 1)

end

end A045777.P6238435703133482375

/-! ## A045777.P14639813873958886330

`A093094(A233583(n+1))/(A000007(n)+1)`
-/

namespace A045777.P14639813873958886330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093094 (A233583 (n + 1)).toNat : ℚ) / (A000007 n + 1 : ℚ)

end

end A045777.P14639813873958886330

/-! ## A045777.P4111067117418991426

`A093094(A233583(n+1))-A292262(2*n+1)`
-/

namespace A045777.P4111067117418991426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat - A292262 (2 * n + 1)

end

end A045777.P4111067117418991426

/-! ## A045777.P256599246232063189

`A093094(A233583(n+1))-and(1, A006093(n+1))`
-/

namespace A045777.P256599246232063189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat - Int.land 1 (A006093 (n + 1))

end

end A045777.P256599246232063189

/-! ## A045777.P5162752499639987648

`A093094(A233583(n+1))^(A000040(n+1)%2)`
-/

namespace A045777.P5162752499639987648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093094 (A233583 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A045777.P5162752499639987648

/-! ## A045777.P1829047133353523925

`A093094(A233583(n+1))-A000035(A028586(n))`
-/

namespace A045777.P1829047133353523925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat - A000035 (A028586 n).toNat

end

end A045777.P1829047133353523925

/-! ## A045777.P4060145336099303796

`A093094(A233583(n+1))+A008683(A143207(n+1))`
-/

namespace A045777.P4060145336099303796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat + A008683 (A143207 (n + 1)).toNat

end

end A045777.P4060145336099303796

/-! ## A045777.P8699819868269764066

`A093094(A233583(n+1))-A028586(n²)`
-/

namespace A045777.P8699819868269764066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093094 (A233583 (n + 1)).toNat - A028586 (n ^ 2)

end

end A045777.P8699819868269764066

/-!
# A045778: Number of factorizations of n into distinct factors greater than 1.

The programs for A045778, there is no canonical definition to state claims against.
-/

/-! ## A045778.P11978509385259767750

`A344370(n+1)/(n+1)`
-/

namespace A045778.P11978509385259767750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344370 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A045778.P11978509385259767750

/-! ## A045778.P16109243906059123648

`A050323(A101296(n+1))`
-/

namespace A045778.P16109243906059123648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (A101296 (n + 1)).toNat

end

end A045778.P16109243906059123648

/-! ## A045778.P4896008840358710089

`A318286(A181819(n+1))`
-/

namespace A045778.P4896008840358710089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A181819 (n + 1)).toNat

end

end A045778.P4896008840358710089

/-! ## A045778.P17700838332025214825

`∑{d}[n+1, A008966(#)*A050372((n+1)/#)]`
-/

namespace A045778.P17700838332025214825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A050372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P17700838332025214825

/-! ## A045778.P4245253476391440304

`∑{d}[n+1, A008683(#)*A342086((n+1)/#)]`
-/

namespace A045778.P4245253476391440304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A342086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P4245253476391440304

/-! ## A045778.P17960355144321916870

`∑{d}[n+1, A050326(#)*A376679((n+1)/#)]`
-/

namespace A045778.P17960355144321916870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050326 d * A376679 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P17960355144321916870

/-! ## A045778.P14632696132790089952

`∑{d}[n+1, A114592(#)*A328707((n+1)/#)]`
-/

namespace A045778.P14632696132790089952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A328707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P14632696132790089952

/-! ## A045778.P17437033215398275215

`∑{d}[n+1, A316441(#)*A328706((n+1)/#)]`
-/

namespace A045778.P17437033215398275215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A328706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P17437033215398275215

/-! ## A045778.P5531956578682509872

`∑{d}[n+1, A339336(#)*A339718((n+1)/#)]`
-/

namespace A045778.P5531956578682509872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P5531956578682509872

/-! ## A045778.P5482209588834709253

`∑{d}[n+1, A339339(#)*A339721((n+1)/#)]`
-/

namespace A045778.P5482209588834709253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P5482209588834709253

/-! ## A045778.P14791717142926220581

`∑{d}[n+1, A339340(#)*A339722((n+1)/#)]`
-/

namespace A045778.P14791717142926220581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P14791717142926220581

/-! ## A045778.P14448547885673849698

`∑{d}[n+1, A339337(#)*A339719((n+1)/#)]`
-/

namespace A045778.P14448547885673849698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P14448547885673849698

/-! ## A045778.P783752434481605251

`∑{d}[n+1, A339338(#)*A339720((n+1)/#)]`
-/

namespace A045778.P783752434481605251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P783752434481605251

/-! ## A045778.P16312956591136557610

`∑{d}[n+1, A339335(#)*A339717((n+1)/#)]`
-/

namespace A045778.P16312956591136557610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P16312956591136557610

/-! ## A045778.P16471693452366706705

`∑{d}[n+1, A328731(#)*A328876((n+1)/#)]`
-/

namespace A045778.P16471693452366706705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328731 d * A328876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P16471693452366706705

/-! ## A045778.P7208069109725752569

`∑{d}[n+1, A339341(#)*A339734((n+1)/#)]`
-/

namespace A045778.P7208069109725752569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045778.P7208069109725752569

/-! ## A045778.P315899512652071392

`A316364(A178442(n+1))`
-/

namespace A045778.P315899512652071392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316364 (A178442 (n + 1)).toNat

end

end A045778.P315899512652071392

/-! ## A045778.P6272335988172408134

`A332224(2^A088434(n+1))`
-/

namespace A045778.P6272335988172408134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332224 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat

end

end A045778.P6272335988172408134

/-! ## A045778.P11637663239197358436

`A000005(3^A088434(n+1))`
-/

namespace A045778.P11637663239197358436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat

end

end A045778.P11637663239197358436

/-! ## A045778.P6388294354535751995

`A001511(A000079(A088434(n+1)))`
-/

namespace A045778.P6388294354535751995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000079 (A088434 (n + 1)).toNat).toNat

end

end A045778.P6388294354535751995

/-!
# A045779: Number of factorizations of n into distinct factors for some n (image of A045778).

The programs for A045779, there is no canonical definition to state claims against.
-/

/-! ## A045779.P15355535422227075198

`eq[char[A330975(n+1)], A151933(n)]`
-/

namespace A045779.P15355535422227075198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330975 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A045779.P15355535422227075198

/-! ## A045779.P17219521739051123595

`A318286(∏{e}[A045780(n+1), A000040(#)])`
-/

namespace A045779.P17219521739051123595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A045779.P17219521739051123595

/-! ## A045779.P14460565549620153838

`lt[0, A330974(n+1)]+1`
-/

namespace A045779.P14460565549620153838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045779.P14460565549620153838

/-! ## A045779.P5070653825676584458

`A028310(lt[n, A330974(A028310(n))])`
-/

namespace A045779.P5070653825676584458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A045779.P5070653825676584458

/-!
# A045780: Least value with A045779(n) factorizations into distinct factors.

The programs for A045780, there is no canonical definition to state claims against.
-/

/-! ## A045780.P7104655925941533449

`A330974(A045779(n+1))`
-/

namespace A045780.P7104655925941533449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (A045779 (n + 1)).toNat

end

end A045780.P7104655925941533449

/-! ## A045780.P1201067580507201774

`A330974(lt[0, char[A050323(n+1)]])`
-/

namespace A045780.P1201067580507201774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045780.P1201067580507201774

/-! ## A045780.P9919354398497318299

`A330974(eq[1, char[A050323(n+1)]])`
-/

namespace A045780.P9919354398497318299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045780.P9919354398497318299

/-! ## A045780.P8812966283973181925

`A330974(eq[1, char[A318286(n+1)]])`
-/

namespace A045780.P8812966283973181925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045780.P8812966283973181925

/-! ## A045780.P6411045255555722079

`A330974(lt[0, A330974(n+1)]+1)`
-/

namespace A045780.P6411045255555722079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A045780.P6411045255555722079

/-!
# A045782: Number of factorizations of n for some n (image of A001055).

The programs for A045782, there is no canonical definition to state claims against.
-/

/-! ## A045782.P10874382670166017044

`eq[1, char[A050322(n+1)]]`
-/

namespace A045782.P10874382670166017044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045782.P10874382670166017044

/-! ## A045782.P5176465932738272820

`lt[0, char[A318284(n+1)]]`
-/

namespace A045782.P5176465932738272820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045782.P5176465932738272820

/-! ## A045782.P5177815163531083869

`lt[0, A330973(n+1)]+1`
-/

namespace A045782.P5177815163531083869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A045782.P5177815163531083869

/-! ## A045782.P3946267733022292292

`lt[A089052(n), A330973(A028310(n))]`
-/

namespace A045782.P3946267733022292292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045782.P3946267733022292292

/-! ## A045782.P12444768142498647676

`lt[A160051(n), A330973(A028310(n))]`
-/

namespace A045782.P12444768142498647676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045782.P12444768142498647676

/-! ## A045782.P4428993172977963019

`lt[A230093(n), A330973(A028310(n))]`
-/

namespace A045782.P4428993172977963019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045782.P4428993172977963019

/-!
# A045783: Least value with A045782(n) factorizations.

The programs for A045783, there is no canonical definition to state claims against.
-/

/-! ## A045783.P11305519115116751851

`A330973(A045782(n+1))`
-/

namespace A045783.P11305519115116751851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A045782 (n + 1)).toNat

end

end A045783.P11305519115116751851

/-! ## A045783.P9830465875996391009

`A330973(eq[1, char[A050322(n+1)]])`
-/

namespace A045783.P9830465875996391009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045783.P9830465875996391009

/-! ## A045783.P11345889498748591347

`A330973(lt[0, char[A318284(n+1)]])`
-/

namespace A045783.P11345889498748591347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045783.P11345889498748591347

/-! ## A045783.P5593656878739335363

`A330973(eq[1, char[A318284(n+1)]])`
-/

namespace A045783.P5593656878739335363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045783.P5593656878739335363

/-! ## A045783.P12332153917971537845

`A330973(lt[0, A330973(n+1)]+1)`
-/

namespace A045783.P12332153917971537845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A045783.P12332153917971537845

/-!
# A045784: Squares with initial digit '1'.

The programs for A045784, there is no canonical definition to state claims against.
-/

/-! ## A045784.P16884818827047948531

`A045855(n+1)²`
-/

namespace A045784.P16884818827047948531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045855 (n + 1) ^ 2

end

end A045784.P16884818827047948531

/-! ## A045784.P14516146075720060942

`A045855(A000027(n+1))*A045855(n+1)`
-/

namespace A045784.P14516146075720060942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045855 (A000027 (n + 1)).toNat * A045855 (n + 1)

end

end A045784.P14516146075720060942

/-! ## A045784.P12596991654071669755

`A045855(n+1)*A045855((n+1)%A000040(n+1))`
-/

namespace A045784.P12596991654071669755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045855 (n + 1) * A045855 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A045784.P12596991654071669755

/-! ## A045784.P15769313743832106303

`A045855(n+1)%A272671(n+1)*A045855(n+1)`
-/

namespace A045784.P15769313743832106303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045855 (n + 1)) (A272671 (n + 1)) * A045855 (n + 1)

end

end A045784.P15769313743832106303

/-! ## A045784.P1990595360034416231

`A045855(n+1)^A279811(A281071(2*n+1))`
-/

namespace A045784.P1990595360034416231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045855 (n + 1) : ℚ) ^ (A279811 (A281071 (2 * n + 1)).toNat : ℤ)

end

end A045784.P1990595360034416231

/-! ## A045784.P3237724958017451525

`A000290(2*A045855(n+1)-A045855(n+1))`
-/

namespace A045784.P3237724958017451525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A045855 (n + 1) - A045855 (n + 1)).toNat

end

end A045784.P3237724958017451525

/-! ## A045784.P16617321899261850256

`eq[1, A002993(n)]²`
-/

namespace A045784.P16617321899261850256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045784.P16617321899261850256

/-! ## A045784.P11214986205235175569

`record[(n+1)²/A002993(n+1)]`
-/

namespace A045784.P11214986205235175569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A002993 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045784.P11214986205235175569

/-! ## A045784.P1492037459680545220

`A000290(eq[1, A002993(n)])`
-/

namespace A045784.P1492037459680545220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045784.P1492037459680545220

/-! ## A045784.P11462639745779597615

`record[(A008619(n)/A002993(A008619(n)))²]`
-/

namespace A045784.P11462639745779597615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008619 n : ℚ) / (A002993 (A008619 n).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045784.P11462639745779597615

/-! ## A045784.P12528996735927486022

`record[(A034888(n)/A002993(A034888(n)))²]`
-/

namespace A045784.P12528996735927486022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034888 n : ℚ) / (A002993 (A034888 n).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045784.P12528996735927486022

/-! ## A045784.P13225393324223082407

`record[(A052938(n)/A002993(A052938(n)))²]`
-/

namespace A045784.P13225393324223082407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052938 n : ℚ) / (A002993 (A052938 n).toNat : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045784.P13225393324223082407

/-! ## A045784.P8199704360011446573

`A077689(A017173(n))`
-/

namespace A045784.P8199704360011446573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017173 n).toNat

end

end A045784.P8199704360011446573

/-!
# A045785: Squares with initial digit '2'.

The programs for A045785, there is no canonical definition to state claims against.
-/

/-! ## A045785.P14058213307150966600

`A045856(n+1)²`
-/

namespace A045785.P14058213307150966600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045856 (n + 1) ^ 2

end

end A045785.P14058213307150966600

/-! ## A045785.P6712167708813012631

`record[A045856(A344180(n))²]`
-/

namespace A045785.P6712167708813012631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045856 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045785.P6712167708813012631

/-! ## A045785.P8889615538886067758

`A045856(n+1)^A020639(2*(n+1))`
-/

namespace A045785.P8889615538886067758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045856 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A045785.P8889615538886067758

/-! ## A045785.P5387556865014724596

`record[A045856(A344180(n))]*A045856(n+1)`
-/

namespace A045785.P5387556865014724596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045856 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045856 (n + 1)

end

end A045785.P5387556865014724596

/-! ## A045785.P10697311894472132887

`A045856(A000027(n+1))*A045856(n+1)`
-/

namespace A045785.P10697311894472132887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045856 (A000027 (n + 1)).toNat * A045856 (n + 1)

end

end A045785.P10697311894472132887

/-! ## A045785.P4304777961108413698

`A045856(n+1)^A006340(A001950(n+1))`
-/

namespace A045785.P4304777961108413698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045856 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045785.P4304777961108413698

/-! ## A045785.P13627866374793385487

`A045856(n+1)^A006340(A004976(n))`
-/

namespace A045785.P13627866374793385487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045856 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045785.P13627866374793385487

/-! ## A045785.P17268401936882343506

`eq[2, A002993(n)]²`
-/

namespace A045785.P17268401936882343506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045785.P17268401936882343506

/-! ## A045785.P213223248454040526

`eq[2, A032760(n+1)%10]²`
-/

namespace A045785.P213223248454040526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045785.P213223248454040526

/-! ## A045785.P12094546354498793716

`A000290(eq[2, A002993(n)])`
-/

namespace A045785.P12094546354498793716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045785.P12094546354498793716

/-! ## A045785.P2096815499034425798

`eq[2, A002993(n)]^A000040(gcd(n, n+1))`
-/

namespace A045785.P2096815499034425798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A045785.P2096815499034425798

/-! ## A045785.P17580700343681340532

`A077689(A017185(n))`
-/

namespace A045785.P17580700343681340532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017185 n).toNat

end

end A045785.P17580700343681340532

/-!
# A045786: Squares with initial digit '3'.

The programs for A045786, there is no canonical definition to state claims against.
-/

/-! ## A045786.P8917076833767342489

`A045857(n+1)²`
-/

namespace A045786.P8917076833767342489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045857 (n + 1) ^ 2

end

end A045786.P8917076833767342489

/-! ## A045786.P9267278648850229955

`record[A045857(A344180(n))²]`
-/

namespace A045786.P9267278648850229955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045857 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045786.P9267278648850229955

/-! ## A045786.P5048217677847306705

`record[A045857(A344180(n))]*A045857(n+1)`
-/

namespace A045786.P5048217677847306705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045857 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045857 (n + 1)

end

end A045786.P5048217677847306705

/-! ## A045786.P7396650072941667000

`A045857(A000027(n+1))*A045857(n+1)`
-/

namespace A045786.P7396650072941667000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045857 (A000027 (n + 1)).toNat * A045857 (n + 1)

end

end A045786.P7396650072941667000

/-! ## A045786.P2145164558380942580

`A045857(n+1)^A001222(A001358(n+1))`
-/

namespace A045786.P2145164558380942580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045857 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A045786.P2145164558380942580

/-! ## A045786.P15051805365061966565

`A045857(n+1)^A006340(A001950(n+1))`
-/

namespace A045786.P15051805365061966565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045857 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045786.P15051805365061966565

/-! ## A045786.P14858325331900999170

`A045857(n+1)^A006340(A004976(n))`
-/

namespace A045786.P14858325331900999170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045857 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045786.P14858325331900999170

/-! ## A045786.P2897053529105920121

`eq[3, A002993(n)]²`
-/

namespace A045786.P2897053529105920121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045786.P2897053529105920121

/-! ## A045786.P3863885208825106490

`eq[3, A032760(n+1)%10]²`
-/

namespace A045786.P3863885208825106490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045786.P3863885208825106490

/-! ## A045786.P1183883247301703268

`A000290(eq[3, A002993(n)])`
-/

namespace A045786.P1183883247301703268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045786.P1183883247301703268

/-! ## A045786.P453020318248787769

`eq[3, A002993(n)]^A020639(A004277(n+1))`
-/

namespace A045786.P453020318248787769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A020639 (A004277 (n + 1)).toNat : ℤ)

end

end A045786.P453020318248787769

/-! ## A045786.P2695240648472571728

`A077689(A017197(n))`
-/

namespace A045786.P2695240648472571728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017197 n).toNat

end

end A045786.P2695240648472571728

/-! ## A045786.P4027625703281100454

`A045857(n+1)^ratio[A000079(n)]`
-/

namespace A045786.P4027625703281100454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045857 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A045786.P4027625703281100454

/-! ## A045786.P11739716068490614528

`eq[3, A002993(n)]^(2%A041168(n))`
-/

namespace A045786.P11739716068490614528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (Int.tmod 2 (A041168 n) : ℤ)

end

end A045786.P11739716068490614528

/-!
# A045787: Squares with initial digit '4'.

The programs for A045787, there is no canonical definition to state claims against.
-/

/-! ## A045787.P18018945814098870510

`A045858(n+1)²`
-/

namespace A045787.P18018945814098870510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045858 (n + 1) ^ 2

end

end A045787.P18018945814098870510

/-! ## A045787.P3899939221226749372

`record[A045858(A344180(n))²]`
-/

namespace A045787.P3899939221226749372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045858 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045787.P3899939221226749372

/-! ## A045787.P901535178880601256

`A045858(A000027(n+1))^2`
-/

namespace A045787.P901535178880601256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045858 (A000027 (n + 1)).toNat ^ 2

end

end A045787.P901535178880601256

/-! ## A045787.P7204958345503740482

`record[A045858(A344180(n))]*A045858(n+1)`
-/

namespace A045787.P7204958345503740482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045858 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045858 (n + 1)

end

end A045787.P7204958345503740482

/-! ## A045787.P7456803955647483650

`A045858(A000027(n+1))*A045858(n+1)`
-/

namespace A045787.P7456803955647483650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045858 (A000027 (n + 1)).toNat * A045858 (n + 1)

end

end A045787.P7456803955647483650

/-! ## A045787.P8462366727580355700

`A045858(n+1)^A001222(A001358(n+1))`
-/

namespace A045787.P8462366727580355700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A045787.P8462366727580355700

/-! ## A045787.P1457234329871550806

`A045858(n+1)^A078311(2*n+1)`
-/

namespace A045787.P1457234329871550806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A078311 (2 * n + 1) : ℤ)

end

end A045787.P1457234329871550806

/-! ## A045787.P14183634127442217067

`A045858(n+1)^A006340(A001950(n+1))`
-/

namespace A045787.P14183634127442217067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045787.P14183634127442217067

/-! ## A045787.P8905051205032421597

`A045858(n+1)^A006340(A004976(n))`
-/

namespace A045787.P8905051205032421597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045787.P8905051205032421597

/-! ## A045787.P17726944223026454188

`A045858(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A045787.P17726944223026454188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A045787.P17726944223026454188

/-! ## A045787.P1875971021863670911

`A077689(A017209(n))`
-/

namespace A045787.P1875971021863670911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017209 n).toNat

end

end A045787.P1875971021863670911

/-! ## A045787.P16068458302432995335

`eq[4, A002993(n)]²`
-/

namespace A045787.P16068458302432995335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045787.P16068458302432995335

/-! ## A045787.P2307817745857264188

`A000290(eq[4, A002993(n)])`
-/

namespace A045787.P2307817745857264188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045787.P2307817745857264188

/-! ## A045787.P10696934969139554187

`A000463(2*A045858(n+1))`
-/

namespace A045787.P10696934969139554187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A045858 (n + 1)).toNat

end

end A045787.P10696934969139554187

/-! ## A045787.P7754933253776160602

`A045858(n+1)^ratio[A000079(n)]`
-/

namespace A045787.P7754933253776160602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A045787.P7754933253776160602

/-! ## A045787.P10870254306651645498

`A045858(n+1)^A000005(A014442(n+1))`
-/

namespace A045787.P10870254306651645498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A000005 (A014442 (n + 1)).toNat : ℤ)

end

end A045787.P10870254306651645498

/-! ## A045787.P10654410988395594633

`A045858(n+1)^A000005(A078311(n+1))`
-/

namespace A045787.P10654410988395594633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A000005 (A078311 (n + 1)).toNat : ℤ)

end

end A045787.P10654410988395594633

/-! ## A045787.P4797709403720734587

`A045858(n+1)^A000005(A256970(n+1))`
-/

namespace A045787.P4797709403720734587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045858 (n + 1) : ℚ) ^ (A000005 (A256970 (n + 1)).toNat : ℤ)

end

end A045787.P4797709403720734587

/-!
# A045788: Squares with initial digit '5'.

The programs for A045788, there is no canonical definition to state claims against.
-/

/-! ## A045788.P15123845109081247598

`A045859(n+1)²`
-/

namespace A045788.P15123845109081247598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045859 (n + 1) ^ 2

end

end A045788.P15123845109081247598

/-! ## A045788.P11089817542969521402

`A045859(n+1)*A045859((n+1)%A045859(n+1))`
-/

namespace A045788.P11089817542969521402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045859 (n + 1) * A045859 (Int.tmod (n + 1 : ℤ) (A045859 (n + 1))).toNat

end

end A045788.P11089817542969521402

/-! ## A045788.P6168547831224602792

`A077689(A017221(n))`
-/

namespace A045788.P6168547831224602792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017221 n).toNat

end

end A045788.P6168547831224602792

/-! ## A045788.P18235154391804389702

`eq[5, A002993(n)]²`
-/

namespace A045788.P18235154391804389702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A045788.P18235154391804389702

/-! ## A045788.P17234134216531504453

`A000290(A045859(n+2)-Δ[A045859(n+1)])`
-/

namespace A045788.P17234134216531504453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A045859 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A045788.P17234134216531504453

/-! ## A045788.P10332704710547847920

`A000290(2*A045859(n+1)-A045859(n+1))`
-/

namespace A045788.P10332704710547847920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A045859 (n + 1) - A045859 (n + 1)).toNat

end

end A045788.P10332704710547847920

/-!
# A045789: Squares with initial digit '6'.

The programs for A045789, there is no canonical definition to state claims against.
-/

/-! ## A045789.P12074608040586880978

`A045860(n+1)²`
-/

namespace A045789.P12074608040586880978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045860 (n + 1) ^ 2

end

end A045789.P12074608040586880978

/-! ## A045789.P6356863372853378933

`record[A045860(A344180(n))²]`
-/

namespace A045789.P6356863372853378933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045860 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045789.P6356863372853378933

/-! ## A045789.P450635492824208824

`A045860(n+1)^A020639(A017317(n))`
-/

namespace A045789.P450635492824208824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A020639 (A017317 n).toNat : ℤ)

end

end A045789.P450635492824208824

/-! ## A045789.P10512179263940229028

`record[A045860(A344180(n))]*A045860(n+1)`
-/

namespace A045789.P10512179263940229028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045860 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045860 (n + 1)

end

end A045789.P10512179263940229028

/-! ## A045789.P7116017295707239562

`A045860(A000027(n+1))*A045860(n+1)`
-/

namespace A045789.P7116017295707239562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045860 (A000027 (n + 1)).toNat * A045860 (n + 1)

end

end A045789.P7116017295707239562

/-! ## A045789.P16193827709893379024

`A045860(n+1)^A001222(A001358(n+1))`
-/

namespace A045789.P16193827709893379024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A045789.P16193827709893379024

/-! ## A045789.P3944823431774263962

`A045860(n+1)^A020639(A075818(n+1))`
-/

namespace A045789.P3944823431774263962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A020639 (A075818 (n + 1)).toNat : ℤ)

end

end A045789.P3944823431774263962

/-! ## A045789.P16060782371033644098

`A045860(n+1)^A020639(A171757(n+1))`
-/

namespace A045789.P16060782371033644098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A020639 (A171757 (n + 1)).toNat : ℤ)

end

end A045789.P16060782371033644098

/-! ## A045789.P8631013185562993468

`A045860(n+1)^A001222(A001750(n+1))`
-/

namespace A045789.P8631013185562993468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A001222 (A001750 (n + 1)).toNat : ℤ)

end

end A045789.P8631013185562993468

/-! ## A045789.P18338865804712738025

`A045860(n+1)^A062830(A000040(n+1))`
-/

namespace A045789.P18338865804712738025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A062830 (A000040 (n + 1)).toNat : ℤ)

end

end A045789.P18338865804712738025

/-! ## A045789.P3471907670673287622

`A077689(A017233(n))`
-/

namespace A045789.P3471907670673287622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017233 n).toNat

end

end A045789.P3471907670673287622

/-! ## A045789.P15574394829109370047

`A077689(A122709(n+1))`
-/

namespace A045789.P15574394829109370047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A122709 (n + 1)).toNat

end

end A045789.P15574394829109370047

/-! ## A045789.P13380645761610469786

`A045860(n+1)^A000034(A043904(n+1))`
-/

namespace A045789.P13380645761610469786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A000034 (A043904 (n + 1)).toNat : ℤ)

end

end A045789.P13380645761610469786

/-! ## A045789.P10274725344013895045

`A045860(n+1)^ratio[A000079(n)]`
-/

namespace A045789.P10274725344013895045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A045789.P10274725344013895045

/-! ## A045789.P11749562462220873505

`A045860(n+1)^A000034(A254673(n+1))`
-/

namespace A045789.P11749562462220873505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A000034 (A254673 (n + 1)).toNat : ℤ)

end

end A045789.P11749562462220873505

/-! ## A045789.P3287737885679759128

`A045860(n+1)^A000034(A231232(n+1))`
-/

namespace A045789.P3287737885679759128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A000034 (A231232 (n + 1)).toNat : ℤ)

end

end A045789.P3287737885679759128

/-! ## A045789.P17544342995645121653

`A045860(n+1)^A053214(A231383(n+1))`
-/

namespace A045789.P17544342995645121653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A053214 (A231383 (n + 1)).toNat : ℤ)

end

end A045789.P17544342995645121653

/-! ## A045789.P5413850215216669823

`A045860(n+1)^A053214(A061067(n))`
-/

namespace A045789.P5413850215216669823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A053214 (A061067 n).toNat : ℤ)

end

end A045789.P5413850215216669823

/-! ## A045789.P936278841493460668

`A045860(n+1)^A000034(A061068(n+1))`
-/

namespace A045789.P936278841493460668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045860 (n + 1) : ℚ) ^ (A000034 (A061068 (n + 1)).toNat : ℤ)

end

end A045789.P936278841493460668

/-!
# A045790: Three-dimensional simplices of determinant n.

The programs for A045790, there is no canonical definition to state claims against.
-/

/-! ## A045790.P16008592620583381430

`C(A159842(n+1), ceil(n/63))`
-/

namespace A045790.P16008592620583381430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A159842 (n + 1)).toNat ⌈(n : ℚ) / 63⌉.toNat

end

end A045790.P16008592620583381430

/-! ## A045790.P9480226227192489873

`A159842(A296765(n+1))`
-/

namespace A045790.P9480226227192489873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (A296765 (n + 1)).toNat

end

end A045790.P9480226227192489873

/-! ## A045790.P4184879640204065985

`A159842(A376668(n+1))`
-/

namespace A045790.P4184879640204065985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (A376668 (n + 1)).toNat

end

end A045790.P4184879640204065985

/-! ## A045790.P17079601924304213890

`A159842(A304042(n)+n)`
-/

namespace A045790.P17079601924304213890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (A304042 n + (n : ℤ)).toNat

end

end A045790.P17079601924304213890

/-! ## A045790.P4574639803777882257

`A159842(A272159(n+1)+1)`
-/

namespace A045790.P4574639803777882257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (A272159 (n + 1) + 1).toNat

end

end A045790.P4574639803777882257

/-! ## A045790.P10499525978355125532

`A159842(n+1)^A178489(n)`
-/

namespace A045790.P10499525978355125532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159842 (n + 1) : ℚ) ^ (A178489 n : ℤ)

end

end A045790.P10499525978355125532

/-! ## A045790.P10298655017438237783

`or(A025469(n), A159842(n+1))`
-/

namespace A045790.P10298655017438237783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A159842 (n + 1))

end

end A045790.P10298655017438237783

/-! ## A045790.P10832121445748151759

`A159842(n+1)+char[A054267(n)]`
-/

namespace A045790.P10832121445748151759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054267 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045790.P10832121445748151759

/-! ## A045790.P4194899776873069136

`A159842(n+1)+char[A075938(n)]`
-/

namespace A045790.P4194899776873069136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045790.P4194899776873069136

/-! ## A045790.P12100161131483455956

`A159842(n+1)+char[A204590(n)]`
-/

namespace A045790.P12100161131483455956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204590 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159842 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A045790.P12100161131483455956

/-!
# A045791: Squares with initial digit '7'.

The programs for A045791, there is no canonical definition to state claims against.
-/

/-! ## A045791.P861525712661161658

`A045861(n+1)²`
-/

namespace A045791.P861525712661161658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045861 (n + 1) ^ 2

end

end A045791.P861525712661161658

/-! ## A045791.P14801850467415609832

`record[A045861(A344180(n))²]`
-/

namespace A045791.P14801850467415609832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045861 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045791.P14801850467415609832

/-! ## A045791.P8558382596979481855

`A045861(n+1)^A043529(A061408(n))`
-/

namespace A045791.P8558382596979481855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A043529 (A061408 n).toNat : ℤ)

end

end A045791.P8558382596979481855

/-! ## A045791.P15114488142769492606

`record[A045861(A344180(n))]*A045861(n+1)`
-/

namespace A045791.P15114488142769492606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045861 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045861 (n + 1)

end

end A045791.P15114488142769492606

/-! ## A045791.P11246816596730390754

`A045861(A000027(n+1))*A045861(n+1)`
-/

namespace A045791.P11246816596730390754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045861 (A000027 (n + 1)).toNat * A045861 (n + 1)

end

end A045791.P11246816596730390754

/-! ## A045791.P10423258725057769839

`A045861(n+1)^A001222(A001358(n+1))`
-/

namespace A045791.P10423258725057769839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A045791.P10423258725057769839

/-! ## A045791.P4118748800769523047

`A045861(n+1)^A141310(2*n+1)`
-/

namespace A045791.P4118748800769523047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A141310 (2 * n + 1) : ℤ)

end

end A045791.P4118748800769523047

/-! ## A045791.P9569079707324361114

`A045861(n+1)^A006340(A001950(n+1))`
-/

namespace A045791.P9569079707324361114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045791.P9569079707324361114

/-! ## A045791.P4584002825380951567

`A045861(n+1)^A107286(A008458(n+1))`
-/

namespace A045791.P4584002825380951567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A107286 (A008458 (n + 1)).toNat : ℤ)

end

end A045791.P4584002825380951567

/-! ## A045791.P5440424418784262609

`A045861(n+1)^A006340(A004976(n))`
-/

namespace A045791.P5440424418784262609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045791.P5440424418784262609

/-! ## A045791.P12215718860832036311

`A045861(n+1)^A001222(A001750(n+1))`
-/

namespace A045791.P12215718860832036311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045861 (n + 1) : ℚ) ^ (A001222 (A001750 (n + 1)).toNat : ℤ)

end

end A045791.P12215718860832036311

/-! ## A045791.P4064936482975345670

`A077689(A017245(n))`
-/

namespace A045791.P4064936482975345670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017245 n).toNat

end

end A045791.P4064936482975345670

/-!
# A045792: Squares with initial digit '8'.

The programs for A045792, there is no canonical definition to state claims against.
-/

/-! ## A045792.P11085960558753014754

`A045862(n+1)²`
-/

namespace A045792.P11085960558753014754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (n + 1) ^ 2

end

end A045792.P11085960558753014754

/-! ## A045792.P5452819542091246825

`record[A045862(A344180(n))²]`
-/

namespace A045792.P5452819542091246825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045792.P5452819542091246825

/-! ## A045792.P10001816212349718162

`A045862(n+1)^A020639(2*(n+1))`
-/

namespace A045792.P10001816212349718162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045862 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A045792.P10001816212349718162

/-! ## A045792.P17869312648186926307

`record[A045862(A344180(n))]*A045862(n+1)`
-/

namespace A045792.P17869312648186926307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045862 (n + 1)

end

end A045792.P17869312648186926307

/-! ## A045792.P17409804504527892524

`A045862(A000027(n+1))*A045862(n+1)`
-/

namespace A045792.P17409804504527892524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (A000027 (n + 1)).toNat * A045862 (n + 1)

end

end A045792.P17409804504527892524

/-! ## A045792.P9495838951199921837

`A045862(n+1)^A001222(A001358(n+1))`
-/

namespace A045792.P9495838951199921837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045862 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A045792.P9495838951199921837

/-! ## A045792.P4370819190684608312

`A045862(n+1)^A000034(2*n+1)`
-/

namespace A045792.P4370819190684608312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045862 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A045792.P4370819190684608312

/-! ## A045792.P1905132948514990491

`A045862(n+1)^A006340(A001950(n+1))`
-/

namespace A045792.P1905132948514990491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045862 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045792.P1905132948514990491

/-! ## A045792.P11261733487083172444

`A045862(n+1)^A006340(A004976(n))`
-/

namespace A045792.P11261733487083172444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045862 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045792.P11261733487083172444

/-! ## A045792.P12958501477429082231

`A077689(A017257(n))`
-/

namespace A045792.P12958501477429082231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (A017257 n).toNat

end

end A045792.P12958501477429082231

/-! ## A045792.P12850298717747727026

`record[A045862(A137735(n))²]`
-/

namespace A045792.P12850298717747727026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (A137735 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045792.P12850298717747727026

/-! ## A045792.P18253157680789794577

`record[A045862(A137735(n))]*A045862(n+1)`
-/

namespace A045792.P18253157680789794577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045862 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045862 (n + 1)

end

end A045792.P18253157680789794577

/-!
# A045793: Squares with initial digit '9'.

The programs for A045793, there is no canonical definition to state claims against.
-/

/-! ## A045793.P7905198433637186454

`A045863(n+1)²`
-/

namespace A045793.P7905198433637186454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (n + 1) ^ 2

end

end A045793.P7905198433637186454

/-! ## A045793.P16126292088991637447

`record[A045863(A344180(n))²]`
-/

namespace A045793.P16126292088991637447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045793.P16126292088991637447

/-! ## A045793.P12574512901333787783

`A045863(n+1)^A043529(A061408(n))`
-/

namespace A045793.P12574512901333787783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045863 (n + 1) : ℚ) ^ (A043529 (A061408 n).toNat : ℤ)

end

end A045793.P12574512901333787783

/-! ## A045793.P13710533450389384223

`record[A045863(A344180(n))]*A045863(n+1)`
-/

namespace A045793.P13710533450389384223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045863 (n + 1)

end

end A045793.P13710533450389384223

/-! ## A045793.P13704636701476077812

`A045863(n+1)^A043529(2*(n+1))`
-/

namespace A045793.P13704636701476077812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045863 (n + 1) : ℚ) ^ (A043529 (2 * (n + 1)) : ℤ)

end

end A045793.P13704636701476077812

/-! ## A045793.P33218495126046598

`A045863(n+1)^A006340(A001950(n+1))`
-/

namespace A045793.P33218495126046598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045863 (n + 1) : ℚ) ^ (A006340 (A001950 (n + 1)).toNat : ℤ)

end

end A045793.P33218495126046598

/-! ## A045793.P17628157528415510022

`A045863(n+1)^A006340(A004976(n))`
-/

namespace A045793.P17628157528415510022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045863 (n + 1) : ℚ) ^ (A006340 (A004976 n).toNat : ℤ)

end

end A045793.P17628157528415510022

/-! ## A045793.P11053718167060490227

`record[A333663(n+6)]`
-/

namespace A045793.P11053718167060490227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333663 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045793.P11053718167060490227

/-! ## A045793.P15547725869725573807

`A077689(9*(n+1))`
-/

namespace A045793.P15547725869725573807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077689 (9 * (n + 1))

end

end A045793.P15547725869725573807

/-! ## A045793.P10223257249521614044

`lt[8, A002993(n)]²`
-/

namespace A045793.P10223257249521614044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A045793.P10223257249521614044

/-! ## A045793.P9699594083169646618

`A000463(2*A045863(n+1))`
-/

namespace A045793.P9699594083169646618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A045863 (n + 1)).toNat

end

end A045793.P9699594083169646618

/-! ## A045793.P2751826660424125279

`eq[A002993(A004277(n))², A002993(n)]²`
-/

namespace A045793.P2751826660424125279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A004277 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A045793.P2751826660424125279

/-! ## A045793.P7726792186798361766

`record[A045863(A137735(n))²]`
-/

namespace A045793.P7726792186798361766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (A137735 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045793.P7726792186798361766

/-! ## A045793.P14308171192831024862

`record[A045863(A137735(n))]*A045863(n+1)`
-/

namespace A045793.P14308171192831024862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045863 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A045863 (n + 1)

end

end A045793.P14308171192831024862

/-!
# A045794: Consider all quadruples {a,b,c,d} which reach {k,k,k,k} in n steps under map {a,b,c,d}->{|a-b|,|b-c|,|c-d|,|d-a|}; look at max{a,b,c,d}; sequence gives minimal value of this.

The programs for A045794, the canonical program `A045794.P10600491498430848618` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045794 has offset 1).

The definition of A045794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045794.P10600491498430848618

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=4, a(6)=9, a(7)=11, a(8)=13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045794

/-- `3*a(n-3)+a(n-6)+a(n-9)` -/
def P10600491498430848618.Spec : Prop :=
  ∀ n, (P10600491498430848618.a n : ℤ) = A045794 (n + 1)

theorem P10600491498430848618.correct : P10600491498430848618.Spec := by
  intro n
  simp only [A045794, Nat.add_sub_cancel]

end A045794

/-! ## A045794.P11726584157538827696

`A065678(n+2)`
-/

namespace A045794.P11726584157538827696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065678 (n + 2)

end

end A045794.P11726584157538827696

namespace A045794

/-- `A065678(n+2)` -/
def P11726584157538827696.Spec : Prop :=
  ∀ n, P11726584157538827696.a n = A045794 (n + 1)

end A045794

/-! ## A045794.P16598126098322119430

`A034804(n+1)+A034803(n+4)`
-/

namespace A045794.P16598126098322119430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034804 (n + 1) + A034803 (n + 4)

end

end A045794.P16598126098322119430

namespace A045794

/-- `A034804(n+1)+A034803(n+4)` -/
def P16598126098322119430.Spec : Prop :=
  ∀ n, P16598126098322119430.a n = A045794 (n + 1)

end A045794

/-! ## A045794.P16525654922829825063

`(A034804(n+1)+A034804(n+4))/2`
-/

namespace A045794.P16525654922829825063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034804 (n + 1) + A034804 (n + 4) : ℚ) / 2

end

end A045794.P16525654922829825063

namespace A045794

/-- `(A034804(n+1)+A034804(n+4))/2` -/
def P16525654922829825063.Spec : Prop :=
  ∀ n, P16525654922829825063.a n = (A045794 (n + 1) : ℚ)

end A045794

/-! ## A045794.P835740850758946413

`(A034803(n+1)+A034803(n+7))/2`
-/

namespace A045794.P835740850758946413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034803 (n + 1) + A034803 (n + 7) : ℚ) / 2

end

end A045794.P835740850758946413

namespace A045794

/-- `(A034803(n+1)+A034803(n+7))/2` -/
def P835740850758946413.Spec : Prop :=
  ∀ n, P835740850758946413.a n = (A045794 (n + 1) : ℚ)

end A045794

/-! ## A045794.P7227312580353191360

`A034803(n+10)%A034803(n+9)`
-/

namespace A045794.P7227312580353191360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034803 (n + 10)) (A034803 (n + 9))

end

end A045794.P7227312580353191360

namespace A045794

/-- `A034803(n+10)%A034803(n+9)` -/
def P7227312580353191360.Spec : Prop :=
  ∀ n, P7227312580353191360.a n = A045794 (n + 1)

end A045794

/-!
# A045795: Unitary-sigma sigma multiply perfect numbers: numbers k such that A061765(k) = m*k for some integer m.

The programs for A045795, there is no canonical definition to state claims against.
-/

/-! ## A045795.P15056645026074197641

`record[gcd(n+1, A061765(n+1))]`
-/

namespace A045795.P15056645026074197641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061765 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045795.P15056645026074197641

/-! ## A045795.P5363354841532377407

`record[gcd(A061765(n+1), A131738(n))]`
-/

namespace A045795.P5363354841532377407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061765 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045795.P5363354841532377407

/-!
# A045796: Numbers m = usigma(sigma(k))/k such that usigma(sigma(k)) is divisible by k.

The programs for A045796, there is no canonical definition to state claims against.
-/

/-! ## A045796.P11274083106417936058

`A061765(A045795(n+1))/A045795(n+1)`
-/

namespace A045796.P11274083106417936058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061765 (A045795 (n + 1)).toNat : ℚ) / (A045795 (n + 1) : ℚ)

end

end A045796.P11274083106417936058

/-! ## A045796.P9041878521373435841

`A014081(2*A140677(A045572(n+1)))`
-/

namespace A045796.P9041878521373435841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (2 * A140677 (A045572 (n + 1)).toNat).toNat

end

end A045796.P9041878521373435841

/-! ## A045796.P14894888095873757276

`A014081(lcm(2, A140677(A045572(n+1))))`
-/

namespace A045796.P14894888095873757276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Int.lcm 2 (A140677 (A045572 (n + 1)).toNat))

end

end A045796.P14894888095873757276

/-! ## A045796.P14877465936816225339

`A237271(or(2*n+1, A206138(2*n+1)))`
-/

namespace A045796.P14877465936816225339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (Int.lor (2 * n + 1 : ℤ) (A206138 (2 * n + 1))).toNat

end

end A045796.P14877465936816225339

/-! ## A045796.P5825779686769318105

`ceil(ratio[A217489(A255047(n))])`
-/

namespace A045796.P5825779686769318105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217489 (A255047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A045796.P5825779686769318105

/-!
# A045797: Evenish numbers (prime to 10 and 10's digit is even).

The programs for A045797, the canonical program `A045797.P9904687983047091000` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045797 has offset 1).

The definition of A045797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045797.P9904687983047091000

`record[or(10, n)-9]+n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045797

/-- `record[or(10, n)-9]+n` -/
def P9904687983047091000.Spec : Prop :=
  ∀ n, P9904687983047091000.a n = A045797 (n + 1)

theorem P9904687983047091000.correct : P9904687983047091000.Spec := by
  intro n
  simp only [A045797, Nat.add_sub_cancel]

end A045797

/-! ## A045797.P8622876730327015846

`record[or(10, n)]-(9-n)`
-/

namespace A045797.P8622876730327015846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (9 - (n : ℤ))

end

end A045797.P8622876730327015846

namespace A045797

/-- `record[or(10, n)]-(9-n)` -/
def P8622876730327015846.Spec : Prop :=
  ∀ n, P8622876730327015846.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P2325622354184296950

`record[xor(10, n)-9]+n`
-/

namespace A045797.P2325622354184296950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 10 n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A045797.P2325622354184296950

namespace A045797

/-- `record[xor(10, n)-9]+n` -/
def P2325622354184296950.Spec : Prop :=
  ∀ n, P2325622354184296950.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P9018588849369069310

`a(n-4)+20` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`
-/

namespace A045797.P9018588849369069310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 9] fun n a =>
  a (n - 4) + 20

end

end A045797.P9018588849369069310

namespace A045797

/-- `a(n-4)+20` -/
def P9018588849369069310.Spec : Prop :=
  ∀ n, (P9018588849369069310.a n : ℤ) = A045797 (n + 1)

end A045797

/-! ## A045797.P6512557564932621856

`xor(10, record[xor(10, n)])+n+1`
-/

namespace A045797.P6512557564932621856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + (n + 1)

end

end A045797.P6512557564932621856

namespace A045797

/-- `xor(10, record[xor(10, n)])+n+1` -/
def P6512557564932621856.Spec : Prop :=
  ∀ n, (P6512557564932621856.a n : ℤ) = A045797 (n + 1)

end A045797

/-! ## A045797.P2798074648411234852

`record[1-and(10, n)+n]+n`
-/

namespace A045797.P2798074648411234852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 10 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A045797.P2798074648411234852

namespace A045797

/-- `record[1-and(10, n)+n]+n` -/
def P2798074648411234852.Spec : Prop :=
  ∀ n, P2798074648411234852.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P14300621313147402828

`2*(∑[dr(gcd(4, n)!)]-3)-5`
-/

namespace A045797.P14300621313147402828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (Nat.gcd 4 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) - 5

end

end A045797.P14300621313147402828

namespace A045797

/-- `2*(∑[dr(gcd(4, n)!)]-3)-5` -/
def P14300621313147402828.Spec : Prop :=
  ∀ n, P14300621313147402828.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P14357899428773277227

`lt[n+3, xor(10, n-3)]+n-2`
-/

namespace A045797.P14357899428773277227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + ((n : ℤ) - 2)

end

end A045797.P14357899428773277227

namespace A045797

/-- `lt[n+3, xor(10, n-3)]+n-2` -/
def P14357899428773277227.Spec : Prop :=
  ∀ n, P14357899428773277227.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P4273067920860954787

`A045798(n+1)-10`
-/

namespace A045797.P4273067920860954787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1) - 10

end

end A045797.P4273067920860954787

namespace A045797

/-- `A045798(n+1)-10` -/
def P4273067920860954787.Spec : Prop :=
  ∀ n, P4273067920860954787.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P5857479446927369920

`2*A326422(n+1)-5`
-/

namespace A045797.P5857479446927369920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326422 (n + 1) - 5

end

end A045797.P5857479446927369920

namespace A045797

/-- `2*A326422(n+1)-5` -/
def P5857479446927369920.Spec : Prop :=
  ∀ n, P5857479446927369920.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P16016917492235487989

`A214864(n+1)+A023451(n)`
-/

namespace A045797.P16016917492235487989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214864 (n + 1) + A023451 n

end

end A045797.P16016917492235487989

namespace A045797

/-- `A214864(n+1)+A023451(n)` -/
def P16016917492235487989.Spec : Prop :=
  ∀ n, P16016917492235487989.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P8818554060136642431

`A214864(n+1)-A022965(n)`
-/

namespace A045797.P8818554060136642431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214864 (n + 1) - A022965 n

end

end A045797.P8818554060136642431

namespace A045797

/-- `A214864(n+1)-A022965(n)` -/
def P8818554060136642431.Spec : Prop :=
  ∀ n, P8818554060136642431.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P13155318654010317212

`A100531(n)-(1-A093148(n))²`
-/

namespace A045797.P13155318654010317212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 n - (1 - A093148 n) ^ 2

end

end A045797.P13155318654010317212

namespace A045797

/-- `A100531(n)-(1-A093148(n))²` -/
def P13155318654010317212.Spec : Prop :=
  ∀ n, P13155318654010317212.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P10429157018404200686

`A187715(n+1)-A131806(n+1)`
-/

namespace A045797.P10429157018404200686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1) - A131806 (n + 1)

end

end A045797.P10429157018404200686

namespace A045797

/-- `A187715(n+1)-A131806(n+1)` -/
def P10429157018404200686.Spec : Prop :=
  ∀ n, P10429157018404200686.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P3748887464393642406

`A216178(n)+A016825(n)-(5-n)`
-/

namespace A045797.P3748887464393642406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216178 n + A016825 n - (5 - (n : ℤ))

end

end A045797.P3748887464393642406

namespace A045797

/-- `A216178(n)+A016825(n)-(5-n)` -/
def P3748887464393642406.Spec : Prop :=
  ∀ n, P3748887464393642406.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P17054002870254283469

`A047461(A047227(n+1))-n`
-/

namespace A045797.P17054002870254283469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A047227 (n + 1)).toNat - (n : ℤ)

end

end A045797.P17054002870254283469

namespace A045797

/-- `A047461(A047227(n+1))-n` -/
def P17054002870254283469.Spec : Prop :=
  ∀ n, P17054002870254283469.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P2139794900604076033

`A042948(A047476(n+1))+1+n`
-/

namespace A045797.P2139794900604076033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047476 (n + 1)).toNat + 1 + (n : ℤ)

end

end A045797.P2139794900604076033

namespace A045797

/-- `A042948(A047476(n+1))+1+n` -/
def P2139794900604076033.Spec : Prop :=
  ∀ n, P2139794900604076033.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P5501330963353309491

`A004443(n)+A042948(A042948(n))-1`
-/

namespace A045797.P5501330963353309491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n + (A042948 (A042948 n).toNat - 1)

end

end A045797.P5501330963353309491

namespace A045797

/-- `A004443(n)+A042948(A042948(n))-1` -/
def P5501330963353309491.Spec : Prop :=
  ∀ n, P5501330963353309491.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P10303632501781850010

`A045572(A047454(n+1))`
-/

namespace A045797.P10303632501781850010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A047454 (n + 1)).toNat

end

end A045797.P10303632501781850010

namespace A045797

/-- `A045572(A047454(n+1))` -/
def P10303632501781850010.Spec : Prop :=
  ∀ n, P10303632501781850010.a n = A045797 (n + 1)

end A045797

/-! ## A045797.P1077284560383427155

`A112652(A047476(n+1)+1)-n`
-/

namespace A045797.P1077284560383427155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A047476 (n + 1) + 1).toNat - (n : ℤ)

end

end A045797.P1077284560383427155

namespace A045797

/-- `A112652(A047476(n+1)+1)-n` -/
def P1077284560383427155.Spec : Prop :=
  ∀ n, P1077284560383427155.a n = A045797 (n + 1)

end A045797

/-!
# A045798: Oddish numbers (prime to 10 and 10's digit is odd).

The programs for A045798, the canonical program `A045798.P823104922367124387` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045798 has offset 1).

The definition of A045798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045798.P823104922367124387

`record[or(10, n)+1]+n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A045798

/-- `record[or(10, n)+1]+n` -/
def P823104922367124387.Spec : Prop :=
  ∀ n, (P823104922367124387.a n : ℤ) = A045798 (n + 1)

theorem P823104922367124387.correct : P823104922367124387.Spec := by
  intro n
  simp only [A045798, Nat.add_sub_cancel]

end A045798

/-! ## A045798.P18435974864067866640

`record[xor(10, n)+1]+n`
-/

namespace A045798.P18435974864067866640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 10 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A045798.P18435974864067866640

namespace A045798

/-- `record[xor(10, n)+1]+n` -/
def P18435974864067866640.Spec : Prop :=
  ∀ n, (P18435974864067866640.a n : ℤ) = A045798 (n + 1)

end A045798

/-! ## A045798.P16651217889477701399

`eq[n, or(10, n)]+n+1`
-/

namespace A045798.P16651217889477701399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A045798.P16651217889477701399

namespace A045798

/-- `eq[n, or(10, n)]+n+1` -/
def P16651217889477701399.Spec : Prop :=
  ∀ n, (P16651217889477701399.a n : ℤ) = A045798 (n + 1)

end A045798

/-! ## A045798.P13320846885130595772

`a(n-4)+20` with `a(0)=11, a(1)=13, a(2)=17, a(3)=19`
-/

namespace A045798.P13320846885130595772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 13, 17, 19] fun n a =>
  a (n - 4) + 20

end

end A045798.P13320846885130595772

namespace A045798

/-- `a(n-4)+20` -/
def P13320846885130595772.Spec : Prop :=
  ∀ n, (P13320846885130595772.a n : ℤ) = A045798 (n + 1)

end A045798

/-! ## A045798.P5755027906177701541

`lt[or(10, n), n+1]+n+1`
-/

namespace A045798.P5755027906177701541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (n + 1)

end

end A045798.P5755027906177701541

namespace A045798

/-- `lt[or(10, n), n+1]+n+1` -/
def P5755027906177701541.Spec : Prop :=
  ∀ n, (P5755027906177701541.a n : ℤ) = A045798 (n + 1)

end A045798

/-! ## A045798.P7704006099869387270

`2*(∑[dr(gcd(4, n)!)]-3)+5`
-/

namespace A045798.P7704006099869387270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (Nat.gcd 4 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) + 5

end

end A045798.P7704006099869387270

namespace A045798

/-- `2*(∑[dr(gcd(4, n)!)]-3)+5` -/
def P7704006099869387270.Spec : Prop :=
  ∀ n, P7704006099869387270.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P7182767353912604878

`A045797(n+1)+10`
-/

namespace A045798.P7182767353912604878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1) + 10

end

end A045798.P7182767353912604878

namespace A045798

/-- `A045797(n+1)+10` -/
def P7182767353912604878.Spec : Prop :=
  ∀ n, P7182767353912604878.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P4828756387179953072

`∑[2*A010123(n)]+5`
-/

namespace A045798.P4828756387179953072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A045798.P4828756387179953072

namespace A045798

/-- `∑[2*A010123(n)]+5` -/
def P4828756387179953072.Spec : Prop :=
  ∀ n, P4828756387179953072.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P14022066231581324399

`2*A326422(n+1)+5`
-/

namespace A045798.P14022066231581324399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326422 (n + 1) + 5

end

end A045798.P14022066231581324399

namespace A045798

/-- `2*A326422(n+1)+5` -/
def P14022066231581324399.Spec : Prop :=
  ∀ n, P14022066231581324399.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P11189445281853413528

`n+1+A214864(n+1)`
-/

namespace A045798.P11189445281853413528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A214864 (n + 1)

end

end A045798.P11189445281853413528

namespace A045798

/-- `n+1+A214864(n+1)` -/
def P11189445281853413528.Spec : Prop :=
  ∀ n, P11189445281853413528.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P3120629245249097200

`n+5+A216178(n)+A016825(n)`
-/

namespace A045798.P3120629245249097200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) + (A216178 n + A016825 n)

end

end A045798.P3120629245249097200

namespace A045798

/-- `n+5+A216178(n)+A016825(n)` -/
def P3120629245249097200.Spec : Prop :=
  ∀ n, P3120629245249097200.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P14485104682697085148

`A047575(n+2)+A047260(A047575(n+2))`
-/

namespace A045798.P14485104682697085148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047575 (n + 2) + A047260 (A047575 (n + 2)).toNat

end

end A045798.P14485104682697085148

namespace A045798

/-- `A047575(n+2)+A047260(A047575(n+2))` -/
def P14485104682697085148.Spec : Prop :=
  ∀ n, P14485104682697085148.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P17343556557147600165

`A045572(A047575(n+2))`
-/

namespace A045798.P17343556557147600165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A047575 (n + 2)).toNat

end

end A045798.P17343556557147600165

namespace A045798

/-- `A045572(A047575(n+2))` -/
def P17343556557147600165.Spec : Prop :=
  ∀ n, P17343556557147600165.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P14720868450198676905

`A115419(A154708(n+1))+1+n`
-/

namespace A045798.P14720868450198676905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A154708 (n + 1)).toNat + 1 + (n : ℤ)

end

end A045798.P14720868450198676905

namespace A045798

/-- `A115419(A154708(n+1))+1+n` -/
def P14720868450198676905.Spec : Prop :=
  ∀ n, P14720868450198676905.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P4507298284160148396

`A115419(A042964(n+1))+2+n`
-/

namespace A045798.P4507298284160148396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A042964 (n + 1)).toNat + 2 + (n : ℤ)

end

end A045798.P4507298284160148396

namespace A045798

/-- `A115419(A042964(n+1))+2+n` -/
def P4507298284160148396.Spec : Prop :=
  ∀ n, P4507298284160148396.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P11917392203761532388

`A115419(A053438(n+1))+n+2`
-/

namespace A045798.P11917392203761532388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A053438 (n + 1)).toNat + (n + 2 : ℤ)

end

end A045798.P11917392203761532388

namespace A045798

/-- `A115419(A053438(n+1))+n+2` -/
def P11917392203761532388.Spec : Prop :=
  ∀ n, P11917392203761532388.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P11430458240818116815

`A115419(A098180(2*n+1))+n+2`
-/

namespace A045798.P11430458240818116815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A098180 (2 * n + 1)).toNat + (n + 2 : ℤ)

end

end A045798.P11430458240818116815

namespace A045798

/-- `A115419(A098180(2*n+1))+n+2` -/
def P11430458240818116815.Spec : Prop :=
  ∀ n, P11430458240818116815.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P3663163285534364144

`A115419(2*(n+1))+2*A008621(2*n)`
-/

namespace A045798.P3663163285534364144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (2 * (n + 1)) + 2 * A008621 (2 * n)

end

end A045798.P3663163285534364144

namespace A045798

/-- `A115419(2*(n+1))+2*A008621(2*n)` -/
def P3663163285534364144.Spec : Prop :=
  ∀ n, P3663163285534364144.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P11966138717994741764

`A115419(2*n+1)+A014601(n+1)-n`
-/

namespace A045798.P11966138717994741764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (2 * n + 1) + (A014601 (n + 1) - (n : ℤ))

end

end A045798.P11966138717994741764

namespace A045798

/-- `A115419(2*n+1)+A014601(n+1)-n` -/
def P11966138717994741764.Spec : Prop :=
  ∀ n, P11966138717994741764.a n = A045798 (n + 1)

end A045798

/-! ## A045798.P15607287225345007904

`A115419(A244584(2*n))+A109613(n+1)`
-/

namespace A045798.P15607287225345007904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (A244584 (2 * n)).toNat + A109613 (n + 1)

end

end A045798.P15607287225345007904

namespace A045798

/-- `A115419(A244584(2*n))+A109613(n+1)` -/
def P15607287225345007904.Spec : Prop :=
  ∀ n, P15607287225345007904.a n = A045798 (n + 1)

end A045798

/-!
# A045799: In the list of divisors of n (in binary), each digit 0-1 appears equally often.

The programs for A045799, there is no canonical definition to state claims against.
-/

/-! ## A045799.P12577621586751529821

`A167502(A167450(n+1)+A011782(n))`
-/

namespace A045799.P12577621586751529821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167502 (A167450 (n + 1) + A011782 n).toNat

end

end A045799.P12577621586751529821

