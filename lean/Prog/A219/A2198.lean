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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A219800: Number of n X 6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 6 array.

The programs for A219800, there is no canonical definition to state claims against.
-/

/-! ## A219800.P6543936913735192401

`A219802(A052905(n+3))`
-/

namespace A219800.P6543936913735192401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A052905 (n + 3)).toNat

end

end A219800.P6543936913735192401

/-! ## A219800.P10746876339055109272

`A219802(A056119(n)+16)`
-/

namespace A219800.P10746876339055109272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A056119 n + 16).toNat

end

end A219800.P10746876339055109272

/-! ## A219800.P4943356535120058857

`A219802(eq[3, A219347(n)])`
-/

namespace A219800.P4943356535120058857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219800.P4943356535120058857

/-!
# A219801: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A219801, there is no canonical definition to state claims against.
-/

/-! ## A219801.P9221261619556486008

`A219802(A055999(n+4))`
-/

namespace A219801.P9221261619556486008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A055999 (n + 4)).toNat

end

end A219801.P9221261619556486008

/-!
# A219802: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nXk array.

The programs for A219802, there is no canonical definition to state claims against.
-/

/-! ## A219802.P18108857945154730673

`A219460(n+1)-A277194(A298937(n))`
-/

namespace A219802.P18108857945154730673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (n + 1) - A277194 (A298937 n).toNat

end

end A219802.P18108857945154730673

/-! ## A219802.P2217091913730999431

`A219460(n+1)-A219487(A025527(n+1))`
-/

namespace A219802.P2217091913730999431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219460 (n + 1) - A219487 (A025527 (n + 1)).toNat

end

end A219802.P2217091913730999431

/-!
# A219803: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A219803, there is no canonical definition to state claims against.
-/

/-! ## A219803.P1480001359832044151

`A219802(∑[n+1]+2)`
-/

namespace A219803.P1480001359832044151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219803.P1480001359832044151

/-! ## A219803.P12373370422624160890

`A014908(n)*A219802(A133263(n+1))`
-/

namespace A219803.P12373370422624160890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 n * A219802 (A133263 (n + 1)).toNat

end

end A219803.P12373370422624160890

/-! ## A219803.P13767669790478586791

`A219802(A133263(n+1))+A151933(n+3)`
-/

namespace A219803.P13767669790478586791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A133263 (n + 1)).toNat + A151933 (n + 3)

end

end A219803.P13767669790478586791

/-! ## A219803.P14929948204115939488

`A219802(A133263(n+1))/A014908(n+1)`
-/

namespace A219803.P14929948204115939488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219802 (A133263 (n + 1)).toNat : ℚ) / (A014908 (n + 1) : ℚ)

end

end A219803.P14929948204115939488

/-!
# A219804: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3Xn array.

The programs for A219804, there is no canonical definition to state claims against.
-/

/-! ## A219804.P13971704249575213118

`A219802(∑[n+2]+4)`
-/

namespace A219804.P13971704249575213118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219804.P13971704249575213118

/-! ## A219804.P7959743395751622352

`or(char[1], A219802(A167614(n+1)))`
-/

namespace A219804.P7959743395751622352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219802 (A167614 (n + 1)).toNat)

end

end A219804.P7959743395751622352

/-! ## A219804.P3247015234432237036

`record[gcd(A073200(n), A219802(n+4))]`
-/

namespace A219804.P3247015234432237036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A219802 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219804.P3247015234432237036

/-! ## A219804.P1612942040647564971

`record[A219802(n+4)/A209148(n+1)]`
-/

namespace A219804.P1612942040647564971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219802 (n + 4) : ℚ) / (A209148 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219804.P1612942040647564971

/-! ## A219804.P11189698690431198786

`A219802(A167614(n+1))+A025444(n)`
-/

namespace A219804.P11189698690431198786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A167614 (n + 1)).toNat + A025444 n

end

end A219804.P11189698690431198786

/-!
# A219805: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A219805, there is no canonical definition to state claims against.
-/

/-! ## A219805.P10020096607038133089

`A219802(A141214(n)+7)`
-/

namespace A219805.P10020096607038133089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A141214 n + 7).toNat

end

end A219805.P10020096607038133089

/-! ## A219805.P11418175820546482851

`A219802(A052905(n)+9)`
-/

namespace A219805.P11418175820546482851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A052905 n + 9).toNat

end

end A219805.P11418175820546482851

/-! ## A219805.P3325869384801741105

`A219802(A055999(n)+10)`
-/

namespace A219805.P3325869384801741105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A055999 n + 10).toNat

end

end A219805.P3325869384801741105

/-! ## A219805.P13461876239305419363

`A219802(eq[5, A066657(n)])`
-/

namespace A219805.P13461876239305419363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219805.P13461876239305419363

/-! ## A219805.P3059035815115518239

`A219802(A167614(n+2)+1)`
-/

namespace A219805.P3059035815115518239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A167614 (n + 2) + 1).toNat

end

end A219805.P3059035815115518239

/-!
# A219806: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A219806, there is no canonical definition to state claims against.
-/

/-! ## A219806.P16711537238639511674

`A219802(∑[n+4]+11)`
-/

namespace A219806.P16711537238639511674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219806.P16711537238639511674

/-! ## A219806.P18003290040585747198

`A219802(A152950(n+5)+2)-C(n, n+2)`
-/

namespace A219806.P18003290040585747198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A152950 (n + 5) + 2).toNat - (Nat.choose n (n + 2) : ℤ)

end

end A219806.P18003290040585747198

/-!
# A219807: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A219807, there is no canonical definition to state claims against.
-/

/-! ## A219807.P2198359569325855649

`A219802(∑[n+5]+16)`
-/

namespace A219807.P2198359569325855649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219807.P2198359569325855649

/-! ## A219807.P9089800967149704972

`A219802(A167487(n+4)-1)%A035794(n+1)`
-/

namespace A219807.P9089800967149704972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219802 (A167487 (n + 4) - 1).toNat) (A035794 (n + 1))

end

end A219807.P9089800967149704972

/-!
# A219808: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A219808, there is no canonical definition to state claims against.
-/

/-! ## A219808.P12944326761759518117

`A219802(A302537(n)+27)`
-/

namespace A219808.P12944326761759518117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A302537 n + 27).toNat

end

end A219808.P12944326761759518117

/-!
# A219809: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219809, there is no canonical definition to state claims against.
-/

/-! ## A219809.P9539794063557585985

`A219816(∑[4*n]+1)`
-/

namespace A219809.P9539794063557585985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219809.P9539794063557585985

/-! ## A219809.P3660812518296947838

`record[A219816(A152271(n²))]`
-/

namespace A219809.P3660812518296947838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219809.P3660812518296947838

/-! ## A219809.P15220174021875399569

`record[A219816(Δ[A235355(n)])]`
-/

namespace A219809.P15220174021875399569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219809.P15220174021875399569

/-!
# A219810: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 2 array.

The programs for A219810, the canonical program `A219810.P7809501357389611393` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219810 has offset 1).

The definition of A219810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219810.P7809501357389611393

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=6, a(2)=16, a(3)=33, a(4)=61, a(5)=106`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A219810

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7809501357389611393.Spec : Prop :=
  ∀ n, P7809501357389611393.a n = A219810 (n + 1)

theorem P7809501357389611393.correct : P7809501357389611393.Spec := by
  intro n
  simp only [A219810, Nat.add_sub_cancel]

end A219810

/-! ## A219810.P4813584008130340696

`A219589(n+1)+2-A074742(n)`
-/

namespace A219810.P4813584008130340696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219589 (n + 1) + (2 - A074742 n)

end

end A219810.P4813584008130340696

namespace A219810

/-- `A219589(n+1)+2-A074742(n)` -/
def P4813584008130340696.Spec : Prop :=
  ∀ n, P4813584008130340696.a n = A219810 (n + 1)

end A219810

/-! ## A219810.P17213777167783075473

`A219589(n+1)+n-∑[A000096(n)]`
-/

namespace A219810.P17213777167783075473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219589 (n + 1) + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219810.P17213777167783075473

namespace A219810

/-- `A219589(n+1)+n-∑[A000096(n)]` -/
def P17213777167783075473.Spec : Prop :=
  ∀ n, P17213777167783075473.a n = A219810 (n + 1)

end A219810

/-! ## A219810.P3761177800682932036

`A143689(A028310(n))+A004275(A055417(n))`
-/

namespace A219810.P3761177800682932036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A028310 n).toNat + A004275 (A055417 n).toNat

end

end A219810.P3761177800682932036

namespace A219810

/-- `A143689(A028310(n))+A004275(A055417(n))` -/
def P3761177800682932036.Spec : Prop :=
  ∀ n, P3761177800682932036.a n = A219810 (n + 1)

end A219810

/-! ## A219810.P18148236708012079183

`A219816(∑[n+2])`
-/

namespace A219810.P18148236708012079183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219810.P18148236708012079183

namespace A219810

/-- `A219816(∑[n+2])` -/
def P18148236708012079183.Spec : Prop :=
  ∀ n, P18148236708012079183.a n = A219810 (n + 1)

end A219810

/-!
# A219811: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219811, there is no canonical definition to state claims against.
-/

/-! ## A219811.P3120770155786858363

`A219816(∑[n+3]+1)`
-/

namespace A219811.P3120770155786858363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219811.P3120770155786858363

/-! ## A219811.P4179574695368284415

`A219816(A034856(n+2))+A011742(n)`
-/

namespace A219811.P4179574695368284415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A034856 (n + 2)).toNat + A011742 n

end

end A219811.P4179574695368284415

/-! ## A219811.P5414397142726607639

`A219816(A034856(n+2))%A125858(n+1)`
-/

namespace A219811.P5414397142726607639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219816 (A034856 (n + 2)).toNat) (A125858 (n + 1))

end

end A219811.P5414397142726607639

/-! ## A219811.P16851706094496840762

`or(A186715(n+2), A219816(A034856(n+2)))`
-/

namespace A219811.P16851706094496840762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186715 (n + 2)) (A219816 (A034856 (n + 2)).toNat)

end

end A219811.P16851706094496840762

/-!
# A219812: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A219812, there is no canonical definition to state claims against.
-/

/-! ## A219812.P5320838671731056150

`A219816(∑[n+4]+3)`
-/

namespace A219812.P5320838671731056150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219812.P5320838671731056150

/-!
# A219813: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX5 array.

The programs for A219813, there is no canonical definition to state claims against.
-/

/-! ## A219813.P814291505588230544

`A219816(∑[n+5]+6)`
-/

namespace A219813.P814291505588230544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219813.P814291505588230544

/-! ## A219813.P13377808901248000610

`A326547(n)+A219816(A046691(n+3))`
-/

namespace A219813.P13377808901248000610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A219816 (A046691 (n + 3)).toNat

end

end A219813.P13377808901248000610

/-! ## A219813.P11513065018114318331

`or(A033461(n), A219816(A046691(n+3)))`
-/

namespace A219813.P11513065018114318331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033461 n) (A219816 (A046691 (n + 3)).toNat)

end

end A219813.P11513065018114318331

/-! ## A219813.P4175420934818194118

`or(A219816(A046691(n+3)), A351641(n))`
-/

namespace A219813.P4175420934818194118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A219816 (A046691 (n + 3)).toNat) (A351641 n)

end

end A219813.P4175420934818194118

/-! ## A219813.P7434362218481848711

`A146671(n+1)*A219816(A046691(n+3))`
-/

namespace A219813.P7434362218481848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146671 (n + 1) * A219816 (A046691 (n + 3)).toNat

end

end A219813.P7434362218481848711

/-!
# A219814: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A219814, there is no canonical definition to state claims against.
-/

/-! ## A219814.P7293816202334820807

`A219816(A052905(n+3))`
-/

namespace A219814.P7293816202334820807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A052905 (n + 3)).toNat

end

end A219814.P7293816202334820807

/-! ## A219814.P12633430766854146497

`A219816(eq[3, A219347(n)])`
-/

namespace A219814.P12633430766854146497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219814.P12633430766854146497

/-! ## A219814.P94021609957960164

`A219816(eq[3, A274661(n)])`
-/

namespace A219814.P94021609957960164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219814.P94021609957960164

/-! ## A219814.P8656809024892550367

`A219816(eq[5, A193592(n)])`
-/

namespace A219814.P8656809024892550367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219814.P8656809024892550367

/-! ## A219814.P10542001752961480

`A219816(A055999(n+3)+1)`
-/

namespace A219814.P10542001752961480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A055999 (n + 3) + 1).toNat

end

end A219814.P10542001752961480

/-!
# A219815: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A219815, there is no canonical definition to state claims against.
-/

/-! ## A219815.P14737384069076034690

`A219816(A055999(n+4))`
-/

namespace A219815.P14737384069076034690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A055999 (n + 4)).toNat

end

end A219815.P14737384069076034690

/-! ## A219815.P2380469382532818200

`A219816(eq[4, A219347(n)])`
-/

namespace A219815.P2380469382532818200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219815.P2380469382532818200

/-! ## A219815.P18313954175828041123

`A219816(eq[6, A193592(n)])`
-/

namespace A219815.P18313954175828041123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219815.P18313954175828041123

/-! ## A219815.P4369282471853014401

`A219816(Δ[A023551(n+2)])`
-/

namespace A219815.P4369282471853014401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (f1 (n + 1) - f1 n).toNat

end

end A219815.P4369282471853014401

/-!
# A219817: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3 X n array.

The programs for A219817, there is no canonical definition to state claims against.
-/

/-! ## A219817.P5016211482319343660

`A219816(∑[n+2]+4)`
-/

namespace A219817.P5016211482319343660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219817.P5016211482319343660

/-! ## A219817.P18339364436383984353

`or(char[3], A219816(A167614(n+1)))`
-/

namespace A219817.P18339364436383984353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219816 (A167614 (n + 1)).toNat)

end

end A219817.P18339364436383984353

/-! ## A219817.P1383410088637396960

`record[A219816(n+4)/A050156(n)]`
-/

namespace A219817.P1383410088637396960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219816 (n + 4) : ℚ) / (A050156 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219817.P1383410088637396960

/-! ## A219817.P13029933851585811201

`record[A219816(n+4)/A225468(n)]`
-/

namespace A219817.P13029933851585811201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219816 (n + 4) : ℚ) / (A225468 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219817.P13029933851585811201

/-! ## A219817.P2421308776468420442

`record[A219816(n+4)/A008275(n+1)]`
-/

namespace A219817.P2421308776468420442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219816 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219817.P2421308776468420442

/-!
# A219818: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219818, there is no canonical definition to state claims against.
-/

/-! ## A219818.P11464813809559317581

`A219816(A141214(n)+7)`
-/

namespace A219818.P11464813809559317581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A141214 n + 7).toNat

end

end A219818.P11464813809559317581

/-! ## A219818.P7629933062657717050

`A219816(A052905(n)+9)`
-/

namespace A219818.P7629933062657717050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A052905 n + 9).toNat

end

end A219818.P7629933062657717050

/-! ## A219818.P17368033439670576354

`A219816(A055999(n)+10)`
-/

namespace A219818.P17368033439670576354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A055999 n + 10).toNat

end

end A219818.P17368033439670576354

/-! ## A219818.P14675630013725325017

`A219816(eq[5, A066657(n)])`
-/

namespace A219818.P14675630013725325017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219818.P14675630013725325017

/-! ## A219818.P13544835114736152080

`A219816(A167614(n+2)+1)`
-/

namespace A219818.P13544835114736152080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A167614 (n + 2) + 1).toNat

end

end A219818.P13544835114736152080

/-!
# A219819: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5 X n array.

The programs for A219819, there is no canonical definition to state claims against.
-/

/-! ## A219819.P1581774466016762699

`A219816(A167499(n+3))`
-/

namespace A219819.P1581774466016762699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A167499 (n + 3)).toNat

end

end A219819.P1581774466016762699

/-! ## A219819.P4108803857152381342

`A219816(A155212(n)+13)`
-/

namespace A219819.P4108803857152381342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A155212 n + 13).toNat

end

end A219819.P4108803857152381342

/-! ## A219819.P2766444939015977237

`A219816(A056000(n)+15)`
-/

namespace A219819.P2766444939015977237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A056000 n + 15).toNat

end

end A219819.P2766444939015977237

/-! ## A219819.P18183450511405565234

`A219816(eq[7, A066657(n)])`
-/

namespace A219819.P18183450511405565234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219819.P18183450511405565234

/-! ## A219819.P18001754982408050473

`A219816(A166136(n+3)-1)`
-/

namespace A219819.P18001754982408050473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A166136 (n + 3) - 1).toNat

end

end A219819.P18001754982408050473

/-!
# A219820: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219820, there is no canonical definition to state claims against.
-/

/-! ## A219820.P10901596979553682947

`A219816(A166136(n+4))`
-/

namespace A219820.P10901596979553682947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A166136 (n + 4)).toNat

end

end A219820.P10901596979553682947

/-! ## A219820.P9623058272350704016

`A219816(A056115(n)+21)`
-/

namespace A219820.P9623058272350704016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A056115 n + 21).toNat

end

end A219820.P9623058272350704016

/-! ## A219820.P18025776320762021401

`A219816(A167499(n+4)+1)`
-/

namespace A219820.P18025776320762021401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A167499 (n + 4) + 1).toNat

end

end A219820.P18025776320762021401

/-! ## A219820.P16650649038618673834

`A219816(A167614(n+4)+3)`
-/

namespace A219820.P16650649038618673834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A167614 (n + 4) + 3).toNat

end

end A219820.P16650649038618673834

/-! ## A219820.P2169111718855907920

`A219816(A000096(n+4)+7)`
-/

namespace A219820.P2169111718855907920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A000096 (n + 4) + 7).toNat

end

end A219820.P2169111718855907920

/-!
# A219821: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A219821, there is no canonical definition to state claims against.
-/

/-! ## A219821.P11680149106275642676

`A219816(A302537(n)+27)`
-/

namespace A219821.P11680149106275642676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A302537 n + 27).toNat

end

end A219821.P11680149106275642676

/-! ## A219821.P3190455589964337082

`A219816(A056119(n)+28)`
-/

namespace A219821.P3190455589964337082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (A056119 n + 28).toNat

end

end A219821.P3190455589964337082

/-! ## A219821.P15081263525547173182

`A219816(eq[11, A066657(n)])`
-/

namespace A219821.P15081263525547173182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219821.P15081263525547173182

/-! ## A219821.P13765406892673343618

`record[A219816(lt[8, A066657(n)])]`
-/

namespace A219821.P13765406892673343618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219816 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219821.P13765406892673343618

/-!
# A219822: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 n X n array.

The programs for A219822, there is no canonical definition to state claims against.
-/

/-! ## A219822.P11639599459521063337

`A219828(∑[4*n]+1)`
-/

namespace A219822.P11639599459521063337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219822.P11639599459521063337

/-!
# A219823: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX3 array.

The programs for A219823, there is no canonical definition to state claims against.
-/

/-! ## A219823.P4862810043333272815

`A219828(∑[n+3]+1)`
-/

namespace A219823.P4862810043333272815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219823.P4862810043333272815

/-!
# A219824: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX4 array.

The programs for A219824, there is no canonical definition to state claims against.
-/

/-! ## A219824.P2267473873696552813

`A219828(∑[n+4]+3)`
-/

namespace A219824.P2267473873696552813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219824.P2267473873696552813

/-!
# A219825: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX5 array.

The programs for A219825, there is no canonical definition to state claims against.
-/

/-! ## A219825.P1598439801603194614

`A219828(∑[n+5]+6)`
-/

namespace A219825.P1598439801603194614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219825.P1598439801603194614

/-!
# A219826: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX6 array.

The programs for A219826, there is no canonical definition to state claims against.
-/

/-! ## A219826.P18440978656554448041

`A219828(A052905(n+3))`
-/

namespace A219826.P18440978656554448041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A052905 (n + 3)).toNat

end

end A219826.P18440978656554448041

/-! ## A219826.P16151869538232385107

`A219828(A302537(n)+15)`
-/

namespace A219826.P16151869538232385107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A302537 n + 15).toNat

end

end A219826.P16151869538232385107

/-!
# A219827: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 nX7 array.

The programs for A219827, there is no canonical definition to state claims against.
-/

/-! ## A219827.P15323326225066023867

`A219828(A055999(n+4))`
-/

namespace A219827.P15323326225066023867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A055999 (n + 4)).toNat

end

end A219827.P15323326225066023867

/-!
# A219829: Number of 2Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 2Xn array.

The programs for A219829, there is no canonical definition to state claims against.
-/

/-! ## A219829.P9673617085781770745

`A219828(∑[n+1]+2)`
-/

namespace A219829.P9673617085781770745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219829.P9673617085781770745

/-! ## A219829.P9439536329890245606

`record[A219828(n+3)/A049458(n)]`
-/

namespace A219829.P9439536329890245606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219828 (n + 3) : ℚ) / (A049458 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219829.P9439536329890245606

/-! ## A219829.P17251886603559242652

`char[A198295(n)]*A219828(A152948(n+3))`
-/

namespace A219829.P17251886603559242652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A219828 (A152948 (n + 3)).toNat

end

end A219829.P17251886603559242652

/-! ## A219829.P12212992936249171771

`char[A198321(n)]*A219828(A152948(n+3))`
-/

namespace A219829.P12212992936249171771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A219828 (A152948 (n + 3)).toNat

end

end A219829.P12212992936249171771

/-! ## A219829.P17564782787755172423

`A219828(A000217(n+1)+2)+A180989(n+1)`
-/

namespace A219829.P17564782787755172423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A000217 (n + 1) + 2).toNat + A180989 (n + 1)

end

end A219829.P17564782787755172423

/-!
# A219830: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 3Xn array.

The programs for A219830, there is no canonical definition to state claims against.
-/

/-! ## A219830.P2232421953316995362

`A219828(∑[n+2]+4)`
-/

namespace A219830.P2232421953316995362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219830.P2232421953316995362

/-! ## A219830.P6910632699356656941

`and(-1, A219828(A167614(n+1)))`
-/

namespace A219830.P6910632699356656941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219828 (A167614 (n + 1)).toNat)

end

end A219830.P6910632699356656941

/-! ## A219830.P2231078551310033787

`A219828(A167614(n+1))+A006927(n)`
-/

namespace A219830.P2231078551310033787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A167614 (n + 1)).toNat + A006927 n

end

end A219830.P2231078551310033787

/-! ## A219830.P5446753212281380827

`A219828(A167614(n+1))+A011731(n)`
-/

namespace A219830.P5446753212281380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A167614 (n + 1)).toNat + A011731 n

end

end A219830.P5446753212281380827

/-! ## A219830.P16389194231029689341

`A219828(A167614(n+1))+A011741(n)`
-/

namespace A219830.P16389194231029689341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A167614 (n + 1)).toNat + A011741 n

end

end A219830.P16389194231029689341

/-!
# A219831: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 4Xn array.

The programs for A219831, there is no canonical definition to state claims against.
-/

/-! ## A219831.P8477550666595960786

`A219828(A145018(n+4))`
-/

namespace A219831.P8477550666595960786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A145018 (n + 4)).toNat

end

end A219831.P8477550666595960786

/-! ## A219831.P16011194133416397113

`A219828(A141214(n)+7)`
-/

namespace A219831.P16011194133416397113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A141214 n + 7).toNat

end

end A219831.P16011194133416397113

/-! ## A219831.P4184434011375914766

`A219828(A052905(n)+9)`
-/

namespace A219831.P4184434011375914766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A052905 n + 9).toNat

end

end A219831.P4184434011375914766

/-! ## A219831.P2436886835278959771

`A219828(A055999(n)+10)`
-/

namespace A219831.P2436886835278959771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A055999 n + 10).toNat

end

end A219831.P2436886835278959771

/-! ## A219831.P3470682852748009221

`A219828(eq[5, A066657(n)])`
-/

namespace A219831.P3470682852748009221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219831.P3470682852748009221

/-!
# A219832: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 5Xn array.

The programs for A219832, there is no canonical definition to state claims against.
-/

/-! ## A219832.P11504941160799972967

`A219828(A167499(n+3))`
-/

namespace A219832.P11504941160799972967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A167499 (n + 3)).toNat

end

end A219832.P11504941160799972967

/-! ## A219832.P16999003869481393664

`A219828(A155212(n)+13)`
-/

namespace A219832.P16999003869481393664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A155212 n + 13).toNat

end

end A219832.P16999003869481393664

/-! ## A219832.P10036600200718240420

`A219828(A056000(n)+15)`
-/

namespace A219832.P10036600200718240420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A056000 n + 15).toNat

end

end A219832.P10036600200718240420

/-! ## A219832.P1440689268317511802

`A219828(eq[7, A066657(n)])`
-/

namespace A219832.P1440689268317511802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219832.P1440689268317511802

/-!
# A219833: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 6Xn array.

The programs for A219833, there is no canonical definition to state claims against.
-/

/-! ## A219833.P4083957160452084842

`A219828(A166136(n+4))`
-/

namespace A219833.P4083957160452084842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A166136 (n + 4)).toNat

end

end A219833.P4083957160452084842

/-!
# A219834: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..3 7Xn array.

The programs for A219834, there is no canonical definition to state claims against.
-/

/-! ## A219834.P7438041958322178633

`A219828(A056119(n)+28)`
-/

namespace A219834.P7438041958322178633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219828 (A056119 n + 28).toNat

end

end A219834.P7438041958322178633

/-!
# A219835: Number of terms of 2^j + 3^k <= 10^n.

The programs for A219835, there is no canonical definition to state claims against.
-/

/-! ## A219835.P8027551594833321507

`A213364(A155212(n))+char[n²]`
-/

namespace A219835.P8027551594833321507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213364 (A155212 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219835.P8027551594833321507

/-!
# A219837: Expansion of x^4*(2-10*x+18*x^2-7*x^3-21*x^4+25*x^5-x^6)/((1-x)^3*(1-2*x)^6).

The programs for A219837, there is no canonical definition to state claims against.
-/

/-! ## A219837.P18405852638835151268

`A219759(n)-A056976(A008989(n))`
-/

namespace A219837.P18405852638835151268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219759 n - A056976 (A008989 n).toNat

end

end A219837.P18405852638835151268

/-! ## A219837.P17009627524104674774

`A219759(n)-A025466(A070947(n))`
-/

namespace A219837.P17009627524104674774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219759 n - A025466 (A070947 n).toNat

end

end A219837.P17009627524104674774

/-! ## A219837.P12756996584319561115

`A219759(n)-A202523(A014551(n))`
-/

namespace A219837.P12756996584319561115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219759 n - A202523 ((A014551 n).toNat + 31)

end

end A219837.P12756996584319561115

/-! ## A219837.P9276250391425078400

`A335446(A000879(n+1))+A213432(n)`
-/

namespace A219837.P9276250391425078400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A000879 (n + 1)).toNat + A213432 n

end

end A219837.P9276250391425078400

/-!
# A219838: Number of ways to write n as x + y with 0 < x <= y and (xy)^2 + xy + 1 prime.

The programs for A219838, there is no canonical definition to state claims against.
-/

/-! ## A219838.P17656530690700457032

`A001222(or(A161680(n), A339357(n+1)))`
-/

namespace A219838.P17656530690700457032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A161680 n) (A339357 (n + 1))).toNat

end

end A219838.P17656530690700457032

/-! ## A219838.P18140501307810749338

`A001221(xor(A059707(n), A296857(n+1)))`
-/

namespace A219838.P18140501307810749338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A059707 n) (A296857 (n + 1))).toNat

end

end A219838.P18140501307810749338

/-! ## A219838.P14323708892559825836

`A001222(eq[A272210(n+1), A276094(n)])`
-/

namespace A219838.P14323708892559825836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219838.P14323708892559825836

/-! ## A219838.P9803586946190534007

`A305830(A087811(n+1)+∑{d}[n, A082784(#-1)])`
-/

namespace A219838.P9803586946190534007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305830 (A087811 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A082784 (d - 1)).toNat

end

end A219838.P9803586946190534007

/-! ## A219838.P5301828589664320063

`A325225(n+1)+A030315(A005179(n+1))`
-/

namespace A219838.P5301828589664320063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1) + A030315 (A005179 (n + 1)).toNat

end

end A219838.P5301828589664320063

/-!
# A219839: a(n) is the number of odd integers in 2..(n-1) that have a common factor (other than 1) with n.

The programs for A219839, the canonical program `A219839.P1850322905401694183` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219839 has offset 1).

The definition of A219839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219839.P1850322905401694183

`floor(A176095(n+1)/2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A219839

/-- `floor(A176095(n+1)/2)` -/
def P1850322905401694183.Spec : Prop :=
  ∀ n, P1850322905401694183.a n = A219839 (n + 1)

theorem P1850322905401694183.correct : P1850322905401694183.Spec := by
  intro n
  simp only [A219839, Nat.add_sub_cancel]

end A219839

/-! ## A219839.P18299208127003790248

`ceil((n-A062570(n+1))/2)`
-/

namespace A219839.P18299208127003790248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A062570 (n + 1) : ℚ) / 2⌉

end

end A219839.P18299208127003790248

namespace A219839

/-- `ceil((n-A062570(n+1))/2)` -/
def P18299208127003790248.Spec : Prop :=
  ∀ n, P18299208127003790248.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P3508741761326437653

`ceil((n-A000010(2*(n+1)))/2)`
-/

namespace A219839.P3508741761326437653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A000010 (2 * (n + 1)) : ℚ) / 2⌉

end

end A219839.P3508741761326437653

namespace A219839

/-- `ceil((n-A000010(2*(n+1)))/2)` -/
def P3508741761326437653.Spec : Prop :=
  ∀ n, P3508741761326437653.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P7435426461268311432

`A004526(A176095(n+1))`
-/

namespace A219839.P7435426461268311432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176095 (n + 1)).toNat

end

end A219839.P7435426461268311432

namespace A219839

/-- `A004526(A176095(n+1))` -/
def P7435426461268311432.Spec : Prop :=
  ∀ n, P7435426461268311432.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P6141416267541118420

`A004526(n)-A085599(n+1)`
-/

namespace A219839.P6141416267541118420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A085599 (n + 1)

end

end A219839.P6141416267541118420

namespace A219839

/-- `A004526(n)-A085599(n+1)` -/
def P6141416267541118420.Spec : Prop :=
  ∀ n, P6141416267541118420.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P2119758539708314856

`A065033(n)-A055034(n+1)`
-/

namespace A219839.P2119758539708314856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A055034 (n + 1)

end

end A219839.P2119758539708314856

namespace A219839

/-- `A065033(n)-A055034(n+1)` -/
def P2119758539708314856.Spec : Prop :=
  ∀ n, P2119758539708314856.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P378384145636513014

`A004526(n+1-A000010(2*(n+1)))`
-/

namespace A219839.P378384145636513014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A000010 (2 * (n + 1))).toNat

end

end A219839.P378384145636513014

namespace A219839

/-- `A004526(n+1-A000010(2*(n+1)))` -/
def P378384145636513014.Spec : Prop :=
  ∀ n, P378384145636513014.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P5084605870265702151

`A065033(n)-A065033(A000010(2*(n+1)))`
-/

namespace A219839.P5084605870265702151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A065033 (A000010 (2 * (n + 1))).toNat

end

end A219839.P5084605870265702151

namespace A219839

/-- `A065033(n)-A065033(A000010(2*(n+1)))` -/
def P5084605870265702151.Spec : Prop :=
  ∀ n, P5084605870265702151.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P3945389371104686183

`A008619(n+1)-A008619(A000010(2*(n+1)))`
-/

namespace A219839.P3945389371104686183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A008619 (A000010 (2 * (n + 1))).toNat

end

end A219839.P3945389371104686183

namespace A219839

/-- `A008619(n+1)-A008619(A000010(2*(n+1)))` -/
def P3945389371104686183.Spec : Prop :=
  ∀ n, P3945389371104686183.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P13837178718538740065

`A123108(n+1)-A123108(A000010(2*(n+1)))`
-/

namespace A219839.P13837178718538740065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) - A123108 (A000010 (2 * (n + 1))).toNat

end

end A219839.P13837178718538740065

namespace A219839

/-- `A123108(n+1)-A123108(A000010(2*(n+1)))` -/
def P13837178718538740065.Spec : Prop :=
  ∀ n, P13837178718538740065.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P16376512686584001863

`A004526(A016035(2*(n+1))-n)`
-/

namespace A219839.P16376512686584001863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016035 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A219839.P16376512686584001863

namespace A219839

/-- `A004526(A016035(2*(n+1))-n)` -/
def P16376512686584001863.Spec : Prop :=
  ∀ n, P16376512686584001863.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P14971829920917882234

`A004526(n-A109606(2*(n+1)))`
-/

namespace A219839.P14971829920917882234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A109606 (2 * (n + 1))).toNat

end

end A219839.P14971829920917882234

namespace A219839

/-- `A004526(n-A109606(2*(n+1)))` -/
def P14971829920917882234.Spec : Prop :=
  ∀ n, P14971829920917882234.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P1243091783443300910

`A004526(n+1)-A004526(A055034(2*(n+1)))`
-/

namespace A219839.P1243091783443300910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A004526 (A055034 (2 * (n + 1))).toNat

end

end A219839.P1243091783443300910

namespace A219839

/-- `A004526(n+1)-A004526(A055034(2*(n+1)))` -/
def P1243091783443300910.Spec : Prop :=
  ∀ n, P1243091783443300910.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P6945095099736871556

`A008619(n+1)-A008619(A055034(2*(n+1)))`
-/

namespace A219839.P6945095099736871556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A008619 (A055034 (2 * (n + 1))).toNat

end

end A219839.P6945095099736871556

namespace A219839

/-- `A008619(n+1)-A008619(A055034(2*(n+1)))` -/
def P6945095099736871556.Spec : Prop :=
  ∀ n, P6945095099736871556.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P10291725996398399455

`A065033(A051953(2*(n+1)))-A065033(n+1)`
-/

namespace A219839.P10291725996398399455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A051953 (2 * (n + 1))).toNat - A065033 (n + 1)

end

end A219839.P10291725996398399455

namespace A219839

/-- `A065033(A051953(2*(n+1)))-A065033(n+1)` -/
def P10291725996398399455.Spec : Prop :=
  ∀ n, P10291725996398399455.a n = A219839 (n + 1)

end A219839

/-! ## A219839.P4715344225681718870

`A080513(A051953(2*(n+1)))-A080513(n+1)`
-/

namespace A219839.P4715344225681718870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A051953 (2 * (n + 1))).toNat - A080513 (n + 1)

end

end A219839.P4715344225681718870

namespace A219839

/-- `A080513(A051953(2*(n+1)))-A080513(n+1)` -/
def P4715344225681718870.Spec : Prop :=
  ∀ n, P4715344225681718870.a n = A219839 (n + 1)

end A219839

/-!
# A219840: Irregular triangle R(n,k) = n mod A000040(k), for 1 <= k <= i, where i is the least such that n < A002110(i).

The programs for A219840, there is no canonical definition to state claims against.
-/

/-! ## A219840.P8524642653917267113

`and(A131718(n), A286626(A000975(n)))`
-/

namespace A219840.P8524642653917267113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131718 n) (A286626 (A000975 n).toNat)

end

end A219840.P8524642653917267113

/-! ## A219840.P17114197896983720698

`and(A244227(n), A286626(A000975(n)))`
-/

namespace A219840.P17114197896983720698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244227 n) (A286626 (A000975 n).toNat)

end

end A219840.P17114197896983720698

/-! ## A219840.P14002737542358255863

`A076755(A076745(n+1))%A176059(n)`
-/

namespace A219840.P14002737542358255863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076755 (A076745 (n + 1)).toNat) (A176059 n)

end

end A219840.P14002737542358255863

/-! ## A219840.P9313873296456654861

`A000002(A214786(3*n+1))-A156259(n+1)`
-/

namespace A219840.P9313873296456654861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A214786 (3 * n + 1)).toNat - A156259 (n + 1)

end

end A219840.P9313873296456654861

/-! ## A219840.P7880288248905020927

`A228351(A011782(n))*A267533(n+2)`
-/

namespace A219840.P7880288248905020927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A011782 n).toNat * A267533 (n + 2)

end

end A219840.P7880288248905020927

/-!
# A219843: Rows of A219463 seen as numbers in binary representation.

The programs for A219843, the canonical program `A219843.P18379057056590791838` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219843 has offset 0).

The definition of A219843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219843.P18379057056590791838

`A000225(n+1)-A001317(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A219843

/-- `A000225(n+1)-A001317(n)` -/
def P18379057056590791838.Spec : Prop :=
  ∀ n, P18379057056590791838.a n = A219843 n

theorem P18379057056590791838.correct : P18379057056590791838.Spec := by
  intro n
  simp only [A219843]

end A219843

/-! ## A219843.P2383260041874901258

`A255047(n)-and(A001317(n), A255047(n))`
-/

namespace A219843.P2383260041874901258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - Int.land (A001317 n) (A255047 n)

end

end A219843.P2383260041874901258

namespace A219843

/-- `A255047(n)-and(A001317(n), A255047(n))` -/
def P2383260041874901258.Spec : Prop :=
  ∀ n, P2383260041874901258.a n = A219843 n

end A219843

/-! ## A219843.P8812986947430847121

`A126646(n)-A001317(n)`
-/

namespace A219843.P8812986947430847121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A001317 n

end

end A219843.P8812986947430847121

namespace A219843

/-- `A126646(n)-A001317(n)` -/
def P8812986947430847121.Spec : Prop :=
  ∀ n, P8812986947430847121.a n = A219843 n

end A219843

/-! ## A219843.P2196498187325381484

`∑[A000079(n)]-A001317(n)`
-/

namespace A219843.P2196498187325381484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001317 n

end

end A219843.P2196498187325381484

namespace A219843

/-- `∑[A000079(n)]-A001317(n)` -/
def P2196498187325381484.Spec : Prop :=
  ∀ n, P2196498187325381484.a n = A219843 n

end A219843

/-! ## A219843.P3179314363364082321

`A255047(n+1)-A001317(n)`
-/

namespace A219843.P3179314363364082321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) - A001317 n

end

end A219843.P3179314363364082321

namespace A219843

/-- `A255047(n+1)-A001317(n)` -/
def P3179314363364082321.Spec : Prop :=
  ∀ n, P3179314363364082321.a n = A219843 n

end A219843

/-! ## A219843.P13650875328602609105

`A052551(2*n)-A001317(n)`
-/

namespace A219843.P13650875328602609105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * n) - A001317 n

end

end A219843.P13650875328602609105

namespace A219843

/-- `A052551(2*n)-A001317(n)` -/
def P13650875328602609105.Spec : Prop :=
  ∀ n, P13650875328602609105.a n = A219843 n

end A219843

/-! ## A219843.P10194200018977752375

`A052955(2*n)-A001317(n)`
-/

namespace A219843.P10194200018977752375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) - A001317 n

end

end A219843.P10194200018977752375

namespace A219843

/-- `A052955(2*n)-A001317(n)` -/
def P10194200018977752375.Spec : Prop :=
  ∀ n, P10194200018977752375.a n = A219843 n

end A219843

/-! ## A219843.P5754823901388239893

`∑[∑[A011782(n)]]-A001317(n)`
-/

namespace A219843.P5754823901388239893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001317 n

end

end A219843.P5754823901388239893

namespace A219843

/-- `∑[∑[A011782(n)]]-A001317(n)` -/
def P5754823901388239893.Spec : Prop :=
  ∀ n, P5754823901388239893.a n = A219843 n

end A219843

/-! ## A219843.P5867705604504111101

`A000079(n+1)-(A001317(n)+1)`
-/

namespace A219843.P5867705604504111101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A001317 n + 1)

end

end A219843.P5867705604504111101

namespace A219843

/-- `A000079(n+1)-(A001317(n)+1)` -/
def P5867705604504111101.Spec : Prop :=
  ∀ n, P5867705604504111101.a n = A219843 n

end A219843

/-! ## A219843.P8628935339960999303

`A060546(2*(n+1))-(A087745(2*n)+1)`
-/

namespace A219843.P8628935339960999303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1)) - (A087745 (2 * n) + 1)

end

end A219843.P8628935339960999303

namespace A219843

/-- `A060546(2*(n+1))-(A087745(2*n)+1)` -/
def P8628935339960999303.Spec : Prop :=
  ∀ n, P8628935339960999303.a n = A219843 n

end A219843

/-! ## A219843.P3254955142968755487

`A095121(n)-and(A001317(n), A095121(n))`
-/

namespace A219843.P3254955142968755487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - Int.land (A001317 n) (A095121 n)

end

end A219843.P3254955142968755487

namespace A219843

/-- `A095121(n)-and(A001317(n), A095121(n))` -/
def P3254955142968755487.Spec : Prop :=
  ∀ n, P3254955142968755487.a n = A219843 n

end A219843

/-! ## A219843.P117823946227837320

`A262866(n)%A255047(n)`
-/

namespace A219843.P117823946227837320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262866 n) (A255047 n)

end

end A219843.P117823946227837320

namespace A219843

/-- `A262866(n)%A255047(n)` -/
def P117823946227837320.Spec : Prop :=
  ∀ n, P117823946227837320.a n = A219843 n

end A219843

/-! ## A219843.P7616000080102099727

`A267675(n)%A000079(n)`
-/

namespace A219843.P7616000080102099727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267675 n) (A000079 n)

end

end A219843.P7616000080102099727

namespace A219843

/-- `A267675(n)%A000079(n)` -/
def P7616000080102099727.Spec : Prop :=
  ∀ n, P7616000080102099727.a n = A219843 n

end A219843

/-! ## A219843.P13678947660214385784

`and(A000225(n), A267675(n))`
-/

namespace A219843.P13678947660214385784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A267675 n)

end

end A219843.P13678947660214385784

namespace A219843

/-- `and(A000225(n), A267675(n))` -/
def P13678947660214385784.Spec : Prop :=
  ∀ n, P13678947660214385784.a n = A219843 n

end A219843

/-! ## A219843.P14236998732123173924

`and(A005367(n), A267675(n))`
-/

namespace A219843.P14236998732123173924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A267675 n)

end

end A219843.P14236998732123173924

namespace A219843

/-- `and(A005367(n), A267675(n))` -/
def P14236998732123173924.Spec : Prop :=
  ∀ n, P14236998732123173924.a n = A219843 n

end A219843

/-! ## A219843.P9934273772030612540

`and(A101622(n), A267675(n))`
-/

namespace A219843.P9934273772030612540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101622 n) (A267675 n)

end

end A219843.P9934273772030612540

namespace A219843

/-- `and(A101622(n), A267675(n))` -/
def P9934273772030612540.Spec : Prop :=
  ∀ n, P9934273772030612540.a n = A219843 n

end A219843

/-! ## A219843.P1742643471415902627

`and(A141023(n), A267675(n))`
-/

namespace A219843.P1742643471415902627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141023 n) (A267675 n)

end

end A219843.P1742643471415902627

namespace A219843

/-- `and(A141023(n), A267675(n))` -/
def P1742643471415902627.Spec : Prop :=
  ∀ n, P1742643471415902627.a n = A219843 n

end A219843

/-! ## A219843.P17480544036387521852

`and(A267675(n), A296965(n))`
-/

namespace A219843.P17480544036387521852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267675 n) (A296965 n)

end

end A219843.P17480544036387521852

namespace A219843

/-- `and(A267675(n), A296965(n))` -/
def P17480544036387521852.Spec : Prop :=
  ∀ n, P17480544036387521852.a n = A219843 n

end A219843

/-! ## A219843.P7504238185146157222

`and(A092431(n+1), A267675(n))`
-/

namespace A219843.P7504238185146157222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092431 (n + 1)) (A267675 n)

end

end A219843.P7504238185146157222

namespace A219843

/-- `and(A092431(n+1), A267675(n))` -/
def P7504238185146157222.Spec : Prop :=
  ∀ n, P7504238185146157222.a n = A219843 n

end A219843

/-! ## A219843.P7000710975603628034

`and(A143960(n+1), A267675(n))`
-/

namespace A219843.P7000710975603628034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A267675 n)

end

end A219843.P7000710975603628034

namespace A219843

/-- `and(A143960(n+1), A267675(n))` -/
def P7000710975603628034.Spec : Prop :=
  ∀ n, P7000710975603628034.a n = A219843 n

end A219843

/-!
# A219845: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219845, there is no canonical definition to state claims against.
-/

/-! ## A219845.P6800894340557988687

`A219852(∑[4*n]+1)`
-/

namespace A219845.P6800894340557988687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219845.P6800894340557988687

/-! ## A219845.P6368343445746232738

`record[root(A219852(2*n+1), comp[n²]-round(sqrt(n+1))²)]`
-/

namespace A219845.P6368343445746232738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219852 (2 * n + 1) : ℝ) ^ (1 / ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219845.P6368343445746232738

/-! ## A219845.P2871326723322843306

`record[A219852(A152271(n²))]`
-/

namespace A219845.P2871326723322843306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219845.P2871326723322843306

/-! ## A219845.P17271990373292206352

`record[A219852(Δ[A235355(n)])]`
-/

namespace A219845.P17271990373292206352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219845.P17271990373292206352

/-!
# A219846: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 2 array.

The programs for A219846, the canonical program `A219846.P5384798325540783297` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219846 has offset 1).

The definition of A219846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219846.P5384798325540783297

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=16, a(3)=33, a(4)=62`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A219846

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5384798325540783297.Spec : Prop :=
  ∀ n, P5384798325540783297.a n = A219846 (n + 1)

theorem P5384798325540783297.correct : P5384798325540783297.Spec := by
  intro n
  simp only [A219846, Nat.add_sub_cancel]

end A219846

/-! ## A219846.P17907035104405949678

`∑[∑[∑[n]+2]-1]+2`
-/

namespace A219846.P17907035104405949678
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A219846.P17907035104405949678

namespace A219846

/-- `∑[∑[∑[n]+2]-1]+2` -/
def P17907035104405949678.Spec : Prop :=
  ∀ n, P17907035104405949678.a n = A219846 (n + 1)

end A219846

/-! ## A219846.P10939080560719824858

`∑[∑[∑[n]+2%(n+1)]+3]`
-/

namespace A219846.P10939080560719824858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2 % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219846.P10939080560719824858

namespace A219846

/-- `∑[∑[∑[n]+2%(n+1)]+3]` -/
def P10939080560719824858.Spec : Prop :=
  ∀ n, (P10939080560719824858.a n : ℤ) = A219846 (n + 1)

end A219846

/-! ## A219846.P18258918782413084064

`∑[A000038(n)+∑[A133263(n)]]`
-/

namespace A219846.P18258918782413084064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219846.P18258918782413084064

namespace A219846

/-- `∑[A000038(n)+∑[A133263(n)]]` -/
def P18258918782413084064.Spec : Prop :=
  ∀ n, P18258918782413084064.a n = A219846 (n + 1)

end A219846

/-! ## A219846.P14697502685076910949

`∑[A000038(n)+A008778(n)-n²]`
-/

namespace A219846.P14697502685076910949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008778 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219846.P14697502685076910949

namespace A219846

/-- `∑[A000038(n)+A008778(n)-n²]` -/
def P14697502685076910949.Spec : Prop :=
  ∀ n, P14697502685076910949.a n = A219846 (n + 1)

end A219846

/-! ## A219846.P14924291031091729525

`abs(A227161(n+1)-n)`
-/

namespace A219846.P14924291031091729525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227161 (n + 1) - (n : ℤ)|

end

end A219846.P14924291031091729525

namespace A219846

/-- `abs(A227161(n+1)-n)` -/
def P14924291031091729525.Spec : Prop :=
  ∀ n, P14924291031091729525.a n = A219846 (n + 1)

end A219846

/-! ## A219846.P17112968287965990714

`∑[A208340(A000124(n)+1)+n+1]`
-/

namespace A219846.P17112968287965990714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A000124 n + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219846.P17112968287965990714

namespace A219846

/-- `∑[A208340(A000124(n)+1)+n+1]` -/
def P17112968287965990714.Spec : Prop :=
  ∀ n, P17112968287965990714.a n = A219846 (n + 1)

end A219846

/-!
# A219847: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219847, there is no canonical definition to state claims against.
-/

/-! ## A219847.P8532100739291569031

`A219852(∑[n+3]+1)`
-/

namespace A219847.P8532100739291569031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219847.P8532100739291569031

/-! ## A219847.P10638897561821754574

`A219852(Δ[A008778(n)])%A254466(n)`
-/

namespace A219847.P10638897561821754574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219852 (f1 (n + 1) - f1 n).toNat) (A254466 n)

end

end A219847.P10638897561821754574

/-! ## A219847.P5707207089825243334

`A219852(A034856(n+2))%A254466(n)`
-/

namespace A219847.P5707207089825243334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219852 (A034856 (n + 2)).toNat) (A254466 n)

end

end A219847.P5707207089825243334

/-! ## A219847.P3995939206062063775

`A354344(n+1)+A219852(A034856(n+2))`
-/

namespace A219847.P3995939206062063775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1) + A219852 (A034856 (n + 2)).toNat

end

end A219847.P3995939206062063775

/-! ## A219847.P17099461782124953772

`A219852(Δ[A008778(n)])+A000035(2*(n+2))`
-/

namespace A219847.P17099461782124953772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (f1 (n + 1) - f1 n).toNat + A000035 (2 * (n + 2))

end

end A219847.P17099461782124953772

/-!
# A219848: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A219848, there is no canonical definition to state claims against.
-/

/-! ## A219848.P15272573250837581672

`A219852(∑[n+4]+3)`
-/

namespace A219848.P15272573250837581672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219848.P15272573250837581672

/-! ## A219848.P10019330242101892414

`A219852(A167499(n)+A016777(n))%A111346(n+1)`
-/

namespace A219848.P10019330242101892414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219852 (A167499 n + A016777 n).toNat) (A111346 (n + 1))

end

end A219848.P10019330242101892414

/-! ## A219848.P7372781525379963648

`A219852(A167499(n)+A016777(n))+A087555(3*(n+2))`
-/

namespace A219848.P7372781525379963648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167499 n + A016777 n).toNat + A087555 (3 * (n + 2))

end

end A219848.P7372781525379963648

/-!
# A219849: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 5 array.

The programs for A219849, there is no canonical definition to state claims against.
-/

/-! ## A219849.P12447606647728857365

`A219852(∑[n+5]+6)`
-/

namespace A219849.P12447606647728857365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219849.P12447606647728857365

/-!
# A219850: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A219850, there is no canonical definition to state claims against.
-/

/-! ## A219850.P3822707037713211213

`A219852(A052905(n+3))`
-/

namespace A219850.P3822707037713211213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A052905 (n + 3)).toNat

end

end A219850.P3822707037713211213

/-! ## A219850.P8124001357985516785

`A219852(eq[3, A219347(n)])`
-/

namespace A219850.P8124001357985516785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219850.P8124001357985516785

/-! ## A219850.P6262742251382560076

`A219852(eq[5, A193592(n)])`
-/

namespace A219850.P6262742251382560076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219850.P6262742251382560076

/-! ## A219850.P3844156864488199032

`A219852(A055999(n+3)+1)`
-/

namespace A219850.P3844156864488199032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A055999 (n + 3) + 1).toNat

end

end A219850.P3844156864488199032

/-! ## A219850.P6033669236557702608

`A219852(A046691(n+4)-1)`
-/

namespace A219850.P6033669236557702608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A046691 (n + 4) - 1).toNat

end

end A219850.P6033669236557702608

/-!
# A219851: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A219851, there is no canonical definition to state claims against.
-/

/-! ## A219851.P11696866615822166858

`A219852(A055999(n+4))`
-/

namespace A219851.P11696866615822166858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A055999 (n + 4)).toNat

end

end A219851.P11696866615822166858

/-! ## A219851.P6157250787417658187

`A219852(eq[4, A219347(n)])`
-/

namespace A219851.P6157250787417658187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219851.P6157250787417658187

/-! ## A219851.P11991053288242318390

`A219852(eq[6, A193592(n)])`
-/

namespace A219851.P11991053288242318390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219851.P11991053288242318390

/-! ## A219851.P10973647915727079218

`A219852(Δ[A023551(n+2)])`
-/

namespace A219851.P10973647915727079218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (f1 (n + 1) - f1 n).toNat

end

end A219851.P10973647915727079218

/-! ## A219851.P6980504788157915024

`A219852(Δ[A026054(n+4)])`
-/

namespace A219851.P6980504788157915024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (f1 (n + 1) - f1 n).toNat

end

end A219851.P6980504788157915024

/-!
# A219853: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 2 X n array.

The programs for A219853, the canonical program `A219853.P1660109703759436621` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219853 has offset 1).

The definition of A219853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219853.P1660109703759436621

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=7, a(2)=17, a(3)=33, a(4)=56, a(5)=86, a(6)=125`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A219853

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1660109703759436621.Spec : Prop :=
  ∀ n, P1660109703759436621.a n = A219853 (n + 1)

theorem P1660109703759436621.correct : P1660109703759436621.Spec := by
  intro n
  simp only [A219853, Nat.add_sub_cancel]

end A219853

/-! ## A219853.P18301864136974239539

`A219852(∑[n+1]+2)`
-/

namespace A219853.P18301864136974239539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219853.P18301864136974239539

namespace A219853

/-- `A219852(∑[n+1]+2)` -/
def P18301864136974239539.Spec : Prop :=
  ∀ n, P18301864136974239539.a n = A219853 (n + 1)

end A219853

/-! ## A219853.P6346968655845611613

`A219852(A133263(n+1))+char[17]`
-/

namespace A219853.P6346968655845611613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219853.P6346968655845611613

namespace A219853

/-- `A219852(A133263(n+1))+char[17]` -/
def P6346968655845611613.Spec : Prop :=
  ∀ n, P6346968655845611613.a n = A219853 (n + 1)

end A219853

/-! ## A219853.P9021438658749475480

`∑{d}[A219852(A133263(n+1)), A000010(#)]`
-/

namespace A219853.P9021438658749475480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A219853.P9021438658749475480

namespace A219853

/-- `∑{d}[A219852(A133263(n+1)), A000010(#)]` -/
def P9021438658749475480.Spec : Prop :=
  ∀ n, P9021438658749475480.a n = A219853 (n + 1)

end A219853

/-! ## A219853.P17593580261967687121

`∏{d}[A219852(A133263(n+1)), A014963(#)]`
-/

namespace A219853.P17593580261967687121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A219853.P17593580261967687121

namespace A219853

/-- `∏{d}[A219852(A133263(n+1)), A014963(#)]` -/
def P17593580261967687121.Spec : Prop :=
  ∀ n, P17593580261967687121.a n = A219853 (n + 1)

end A219853

/-!
# A219854: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3Xn array.

The programs for A219854, there is no canonical definition to state claims against.
-/

/-! ## A219854.P8061279471657833208

`A219852(∑[n+2]+4)`
-/

namespace A219854.P8061279471657833208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219854.P8061279471657833208

/-! ## A219854.P15712038776324919613

`and(-1, A219852(A167614(n+1)))`
-/

namespace A219854.P15712038776324919613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219852 (A167614 (n + 1)).toNat)

end

end A219854.P15712038776324919613

/-! ## A219854.P5223336752160140653

`A219852(A167614(n+1))+A011745(n)`
-/

namespace A219854.P5223336752160140653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167614 (n + 1)).toNat + A011745 n

end

end A219854.P5223336752160140653

/-! ## A219854.P5552326830792497744

`A219852(A167614(n+1))%A017011(n)`
-/

namespace A219854.P5552326830792497744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219852 (A167614 (n + 1)).toNat) (A017011 n)

end

end A219854.P5552326830792497744

/-! ## A219854.P17969756111700903240

`lcm(A020985(n), A219852(A167614(n+1)))`
-/

namespace A219854.P17969756111700903240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A219852 (A167614 (n + 1)).toNat)

end

end A219854.P17969756111700903240

/-!
# A219855: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219855, there is no canonical definition to state claims against.
-/

/-! ## A219855.P1148774714662140762

`A219852(C(n+5, 2)-n)`
-/

namespace A219855.P1148774714662140762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (Nat.choose (n + 5) 2 - n)

end

end A219855.P1148774714662140762

/-! ## A219855.P10381880996156769290

`A219852(A141214(n)+7)`
-/

namespace A219855.P10381880996156769290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A141214 n + 7).toNat

end

end A219855.P10381880996156769290

/-! ## A219855.P8982411501950879103

`A219852(A052905(n)+9)`
-/

namespace A219855.P8982411501950879103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A052905 n + 9).toNat

end

end A219855.P8982411501950879103

/-! ## A219855.P1314510826144586068

`A219852(A055999(n)+10)`
-/

namespace A219855.P1314510826144586068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A055999 n + 10).toNat

end

end A219855.P1314510826144586068

/-! ## A219855.P728543803454068738

`A219852(eq[5, A066657(n)])`
-/

namespace A219855.P728543803454068738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219855.P728543803454068738

/-!
# A219856: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5Xn array.

The programs for A219856, there is no canonical definition to state claims against.
-/

/-! ## A219856.P12987979728688209704

`A219852(∑[n+4]+11)`
-/

namespace A219856.P12987979728688209704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219856.P12987979728688209704

/-!
# A219857: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219857, there is no canonical definition to state claims against.
-/

/-! ## A219857.P13405662761795159482

`A219852(A166136(n+4))`
-/

namespace A219857.P13405662761795159482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A166136 (n + 4)).toNat

end

end A219857.P13405662761795159482

/-! ## A219857.P14089204333165810362

`A219852(A056115(n)+21)`
-/

namespace A219857.P14089204333165810362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A056115 n + 21).toNat

end

end A219857.P14089204333165810362

/-! ## A219857.P15706979187323854566

`A219852(A167499(n+4)+1)`
-/

namespace A219857.P15706979187323854566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167499 (n + 4) + 1).toNat

end

end A219857.P15706979187323854566

/-! ## A219857.P2906310387286484672

`A219852(A167487(n+4)-1)`
-/

namespace A219857.P2906310387286484672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167487 (n + 4) - 1).toNat

end

end A219857.P2906310387286484672

/-! ## A219857.P5436845423156191011

`A219852(A000124(n+5)+5)`
-/

namespace A219857.P5436845423156191011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A000124 (n + 5) + 5).toNat

end

end A219857.P5436845423156191011

/-!
# A219858: Number of 7 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7 X n array.

The programs for A219858, there is no canonical definition to state claims against.
-/

/-! ## A219858.P10471986119527932584

`A219852(A167487(n+5))`
-/

namespace A219858.P10471986119527932584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167487 (n + 5)).toNat

end

end A219858.P10471986119527932584

/-! ## A219858.P15178756189717699122

`A219852(A056119(n)+28)`
-/

namespace A219858.P15178756189717699122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A056119 n + 28).toNat

end

end A219858.P15178756189717699122

/-! ## A219858.P15704047686276109496

`A219852(eq[11, A066657(n)])`
-/

namespace A219858.P15704047686276109496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219858.P15704047686276109496

/-! ## A219858.P6846330922098584203

`A219852(A166136(n+5)+1)`
-/

namespace A219858.P6846330922098584203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A166136 (n + 5) + 1).toNat

end

end A219858.P6846330922098584203

/-! ## A219858.P18434535288216662634

`A219852(A167499(n+5)+2)`
-/

namespace A219858.P18434535288216662634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 (A167499 (n + 5) + 2).toNat

end

end A219858.P18434535288216662634

/-!
# A219859: Triangular array read by rows: T(n,k) is the number of endofunctions, functions f:{1,2,...,n}->{1,2,...,n}, that have exactly k elements with no preimage; n>=0, 0<=k<=n.

The programs for A219859, there is no canonical definition to state claims against.
-/

/-! ## A219859.P483433173850873860

`A090657(∑[2*n]%comp[∑[n]])`
-/

namespace A219859.P483433173850873860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A219859.P483433173850873860

/-! ## A219859.P16985906484400589806

`A090657(∑[char[∑[n]]]²-(n+1))`
-/

namespace A219859.P16985906484400589806
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A219859.P16985906484400589806

/-! ## A219859.P14948014563009684449

`A094587(n)*A106800(n)`
-/

namespace A219859.P14948014563009684449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A106800 n

end

end A219859.P14948014563009684449

/-! ## A219859.P9113837785943768271

`or(char[1], A090657(A061579(n)))`
-/

namespace A219859.P9113837785943768271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A090657 (A061579 n).toNat)

end

end A219859.P9113837785943768271

/-! ## A219859.P6876880707034060718

`A008279(A061579(n))*A106800(n)`
-/

namespace A219859.P6876880707034060718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A106800 n

end

end A219859.P6876880707034060718

/-! ## A219859.P12825672487137358919

`A007318(n)*A131689(A061579(n))`
-/

namespace A219859.P12825672487137358919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A131689 (A061579 n).toNat

end

end A219859.P12825672487137358919

/-! ## A219859.P8721938758429846596

`A007318(∑[n])*A090657(A061579(n))`
-/

namespace A219859.P8721938758429846596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A090657 (A061579 n).toNat

end

end A219859.P8721938758429846596

/-! ## A219859.P10805783885968648334

`A090657(A061579(n))%record[A000032(n)]`
-/

namespace A219859.P10805783885968648334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090657 (A061579 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A219859.P10805783885968648334

/-! ## A219859.P2874260256224142251

`A090657(A061579(n))^A014963(4*n+2)`
-/

namespace A219859.P2874260256224142251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090657 (A061579 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A219859.P2874260256224142251

/-! ## A219859.P17759025907480577038

`A000010(A014963(2*(n+1)))*A090657(A061579(n))`
-/

namespace A219859.P17759025907480577038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A090657 (A061579 n).toNat

end

end A219859.P17759025907480577038

/-!
# A219861: Number of ways to dissect a nonsquare rectangle into n rectangles of equal area up to symmetry.

The programs for A219861, there is no canonical definition to state claims against.
-/

/-! ## A219861.P346897987572746828

`A071068(A117421(n)+A062709(n))`
-/

namespace A219861.P346897987572746828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (A117421 n + A062709 n).toNat

end

end A219861.P346897987572746828

/-! ## A219861.P5689320540412709301

`A263576(n)+A000196(A340356(n))`
-/

namespace A219861.P5689320540412709301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263576 n + A000196 (A340356 n).toNat

end

end A219861.P5689320540412709301

/-! ## A219861.P5419276582644597445

`A004273(A059685(n+1))-A352149(n)`
-/

namespace A219861.P5419276582644597445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059685 (n + 1)).toNat - A352149 n

end

end A219861.P5419276582644597445

/-!
# A219862: Number of tilings of a 4 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219862, there is no canonical definition to state claims against.
-/

/-! ## A219862.P4818794429929525258

`A219866(A052905(n+2))`
-/

namespace A219862.P4818794429929525258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A052905 (n + 2)).toNat

end

end A219862.P4818794429929525258

/-! ## A219862.P1065645071486085754

`A219866(A056115(n)+10)`
-/

namespace A219862.P1065645071486085754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A056115 n + 10).toNat

end

end A219862.P1065645071486085754

/-! ## A219862.P8352846173954705169

`A219866(A155212(n)+12)`
-/

namespace A219862.P8352846173954705169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A155212 n + 12).toNat

end

end A219862.P8352846173954705169

/-! ## A219862.P9109849412951510085

`A219866(A056000(n)+14)`
-/

namespace A219862.P9109849412951510085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A056000 n + 14).toNat

end

end A219862.P9109849412951510085

/-! ## A219862.P13067715218678875881

`A219866(eq[4, A002262(n)])`
-/

namespace A219862.P13067715218678875881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219862.P13067715218678875881

/-!
# A219863: Decimal expansion of 1 - 1/e^2.

The programs for A219863, there is no canonical definition to state claims against.
-/

/-! ## A219863.P15921979123517626247

`9-A092553(n)`
-/

namespace A219863.P15921979123517626247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A092553 n

end

end A219863.P15921979123517626247

/-!
# A219864: Number of ways to write n as p+q with p and 2pq+1 both prime.

The programs for A219864, there is no canonical definition to state claims against.
-/

/-! ## A219864.P2474459144430402094

`A321728(n)%(A061775(n+1)+1)`
-/

namespace A219864.P2474459144430402094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321728 n) (A061775 (n + 1) + 1)

end

end A219864.P2474459144430402094

/-! ## A219864.P17137508433602737194

`A321728(n)%A070941(A005408(n))`
-/

namespace A219864.P17137508433602737194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321728 n) (A070941 (A005408 n).toNat)

end

end A219864.P17137508433602737194

/-!
# A219865: First differences of A219795.

The programs for A219865, there is no canonical definition to state claims against.
-/

/-! ## A219865.P11418711441156128300

`A219795(n+1)-A219795(n)`
-/

namespace A219865.P11418711441156128300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219795 (n + 1) - A219795 n

end

end A219865.P11418711441156128300

/-! ## A219865.P17563984212329489965

`Δ[A219795(n)]`
-/

namespace A219865.P17563984212329489965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219865.P17563984212329489965

/-! ## A219865.P9616086282580749441

`A219795(C(n+1, n))%A219795(n)`
-/

namespace A219865.P9616086282580749441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219795 (Nat.choose (n + 1) n)) (A219795 n)

end

end A219865.P9616086282580749441

/-! ## A219865.P15995173774260073559

`A219795(-xor(n, -1))%A219795(n)`
-/

namespace A219865.P15995173774260073559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219795 (-Int.xor (n : ℤ) (-1)).toNat) (A219795 n)

end

end A219865.P15995173774260073559

/-! ## A219865.P13393335270234107574

`A219795(char[1]+1+n)%A219795(n)`
-/

namespace A219865.P13393335270234107574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219795 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A219795 n)

end

end A219865.P13393335270234107574

/-!
# A219867: Number of tilings of a 3 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219867, there is no canonical definition to state claims against.
-/

/-! ## A219867.P7301497194351876614

`A219866(∑[n+4]+2)`
-/

namespace A219867.P7301497194351876614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219867.P7301497194351876614

/-! ## A219867.P5901769079161505275

`A000034(2*n)*A219866(A167614(n+2))`
-/

namespace A219867.P5901769079161505275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A219866 (A167614 (n + 2)).toNat

end

end A219867.P5901769079161505275

/-! ## A219867.P4914694885359138076

`A219866(A167614(n+2))%A014137(n+1)`
-/

namespace A219867.P4914694885359138076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219866 (A167614 (n + 2)).toNat) (A014137 (n + 1))

end

end A219867.P4914694885359138076

/-! ## A219867.P12178010543917323777

`A219866(A167614(n+2))+A126869(2*n+1)`
-/

namespace A219867.P12178010543917323777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A167614 (n + 2)).toNat + A126869 (2 * n + 1)

end

end A219867.P12178010543917323777

/-!
# A219868: Number of tilings of a 5 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219868, there is no canonical definition to state claims against.
-/

/-! ## A219868.P17786021960442000863

`record[A219866(A055999(n))]`
-/

namespace A219868.P17786021960442000863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219868.P17786021960442000863

/-! ## A219868.P2635980868725123028

`A219866(A055999(n+3))`
-/

namespace A219868.P2635980868725123028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A055999 (n + 3)).toNat

end

end A219868.P2635980868725123028

/-! ## A219868.P5542885946824783449

`A219866(A167499(n+4))`
-/

namespace A219868.P5542885946824783449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A167499 (n + 4)).toNat

end

end A219868.P5542885946824783449

/-! ## A219868.P14911009519426025231

`record[A219866(A167499(A002262(n)))]`
-/

namespace A219868.P14911009519426025231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A167499 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219868.P14911009519426025231

/-! ## A219868.P9895695618123378132

`record[A219866(A167499(A025480(n)))]`
-/

namespace A219868.P9895695618123378132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A167499 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219868.P9895695618123378132

/-!
# A219869: Number of tilings of a 6 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219869, there is no canonical definition to state claims against.
-/

/-! ## A219869.P12410727464154815258

`A219866(eq[6, A002262(n)])`
-/

namespace A219869.P12410727464154815258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219869.P12410727464154815258

/-! ## A219869.P10609546565190123878

`A219866(eq[6, A025581(n)])`
-/

namespace A219869.P10609546565190123878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219869.P10609546565190123878

/-! ## A219869.P413816171860962241

`record[A219866(A167499(n)+1)]`
-/

namespace A219869.P413816171860962241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A167499 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219869.P413816171860962241

/-! ## A219869.P7179702236179547941

`record[A219866(A133263(n)+4)]`
-/

namespace A219869.P7179702236179547941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A133263 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219869.P7179702236179547941

/-! ## A219869.P7940980671248717370

`record[A219866(A153152(A167499(n)))]`
-/

namespace A219869.P7940980671248717370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A153152 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219869.P7940980671248717370

/-!
# A219870: Number of tilings of a 7 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219870, there is no canonical definition to state claims against.
-/

/-! ## A219870.P9979263601424469801

`A219866(A155212(n+4))`
-/

namespace A219870.P9979263601424469801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A155212 (n + 4)).toNat

end

end A219870.P9979263601424469801

/-! ## A219870.P14381969052043819

`A219866(eq[7, A002262(n)])`
-/

namespace A219870.P14381969052043819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219870.P14381969052043819

/-! ## A219870.P1055749047699198130

`A219866(eq[7, A025581(n)])`
-/

namespace A219870.P1055749047699198130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219870.P1055749047699198130

/-! ## A219870.P10097580699861012216

`A219866(eq[8, A002260(n+1)])`
-/

namespace A219870.P10097580699861012216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219870.P10097580699861012216

/-! ## A219870.P12006840058054122351

`A219866(eq[8, A004736(n+1)])`
-/

namespace A219870.P12006840058054122351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219870.P12006840058054122351

/-!
# A219871: Number of tilings of an 8 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219871, there is no canonical definition to state claims against.
-/

/-! ## A219871.P17165672690624681314

`A219866(eq[8, A002262(n)])`
-/

namespace A219871.P17165672690624681314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219871.P17165672690624681314

/-! ## A219871.P17767509230929543572

`A219866(eq[8, A025581(n)])`
-/

namespace A219871.P17767509230929543572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219871.P17767509230929543572

/-! ## A219871.P16907903972983042590

`A219866(eq[9, A193739(n)])`
-/

namespace A219871.P16907903972983042590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219871.P16907903972983042590

/-! ## A219871.P11453277123502946927

`A219866(eq[9, A002260(n+1)])`
-/

namespace A219871.P11453277123502946927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219871.P11453277123502946927

/-! ## A219871.P12921492241995638090

`A219866(eq[9, A004736(n+1)])`
-/

namespace A219871.P12921492241995638090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219871.P12921492241995638090

/-!
# A219872: Number of tilings of a 9 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219872, there is no canonical definition to state claims against.
-/

/-! ## A219872.P1132349135780210286

`A219866(eq[9, A002262(n)])`
-/

namespace A219872.P1132349135780210286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219872.P1132349135780210286

/-! ## A219872.P9380270649827711494

`A219866(eq[9, A025581(n)])`
-/

namespace A219872.P9380270649827711494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219872.P9380270649827711494

/-! ## A219872.P14428361457882101665

`A219866(eq[10, A193739(n)])`
-/

namespace A219872.P14428361457882101665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219872.P14428361457882101665

/-! ## A219872.P1383720792377251718

`A219866(eq[10, A002260(n+1)])`
-/

namespace A219872.P1383720792377251718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219872.P1383720792377251718

/-! ## A219872.P3922614456202195977

`A219866(eq[10, A103919(n+3)])`
-/

namespace A219872.P3922614456202195977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219872.P3922614456202195977

/-!
# A219873: Number of tilings of a 10 X n rectangle using dominoes and straight (3 X 1) trominoes.

The programs for A219873, there is no canonical definition to state claims against.
-/

/-! ## A219873.P1140405974827959938

`A219866(eq[10, A002262(n)])`
-/

namespace A219873.P1140405974827959938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219873.P1140405974827959938

/-! ## A219873.P14622885924104416649

`A219866(eq[10, A025581(n)])`
-/

namespace A219873.P14622885924104416649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219873.P14622885924104416649

/-! ## A219873.P14512025404826125487

`A219866(eq[11, A002260(n+1)])`
-/

namespace A219873.P14512025404826125487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219873.P14512025404826125487

/-! ## A219873.P16429832591400919663

`A219866(eq[11, A004736(n+1)])`
-/

namespace A219873.P16429832591400919663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219873.P16429832591400919663

/-! ## A219873.P9744641315553202964

`A219866(eq[10, A135223(n+1)-1])`
-/

namespace A219873.P9744641315553202964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219873.P9744641315553202964

/-!
# A219874: Number of tilings of an n X n square using dominoes and straight (3 X 1) trominoes.

The programs for A219874, there is no canonical definition to state claims against.
-/

/-! ## A219874.P2180078313674634789

`A219866(∑[4*n])`
-/

namespace A219874.P2180078313674634789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219874.P2180078313674634789

/-! ## A219874.P13707663100833409436

`gcd(A000038(n), A219866(A046092(n)))`
-/

namespace A219874.P13707663100833409436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A219866 (A046092 n).toNat)

end

end A219874.P13707663100833409436

/-! ## A219874.P4098257987817769743

`A219866(A046092(n))/A014963(∑[n+1])`
-/

namespace A219874.P4098257987817769743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219866 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A219874.P4098257987817769743

/-! ## A219874.P7949613752083025589

`A014963(4*n+6)*A219866(A046092(n))`
-/

namespace A219874.P7949613752083025589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A219866 (A046092 n).toNat

end

end A219874.P7949613752083025589

/-! ## A219874.P14414176253854490944

`A219866(A046092(n))^A251072(n)`
-/

namespace A219874.P14414176253854490944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219866 (A046092 n).toNat : ℚ) ^ (A251072 n : ℤ)

end

end A219874.P14414176253854490944

/-!
# A219875: Multiplication table of the operation "n o m" = n*m + ceiling(n/phi)* ceiling(m/phi), with phi = (1+sqrt(5))/2, read by antidiagonals.

The programs for A219875, there is no canonical definition to state claims against.
-/

/-! ## A219875.P8072240144266843169

`ceil((A340429(n+1)+A003057(n+2))/ϕ)`
-/

namespace A219875.P8072240144266843169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A340429 (n + 1) + A003057 (n + 2) : ℝ) / Real.goldenRatio⌉

end

end A219875.P8072240144266843169

/-! ## A219875.P17749312370306700785

`A019446(A340429(n+1)+A003057(n+2))`
-/

namespace A219875.P17749312370306700785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A340429 (n + 1) + A003057 (n + 2)).toNat

end

end A219875.P17749312370306700785

/-! ## A219875.P872623817712676811

`A189663(A101866(n+1))`
-/

namespace A219875.P872623817712676811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A101866 (n + 1)).toNat

end

end A219875.P872623817712676811

/-! ## A219875.P3801457930382113186

`A060144(A101866(n+1)+2)`
-/

namespace A219875.P3801457930382113186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A101866 (n + 1) + 2).toNat

end

end A219875.P3801457930382113186

/-! ## A219875.P12266923257286459939

`A259103(A184277(n+1))`
-/

namespace A219875.P12266923257286459939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259103 (A184277 (n + 1)).toNat

end

end A219875.P12266923257286459939

/-!
# A219877: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219877, there is no canonical definition to state claims against.
-/

/-! ## A219877.P14093263731293789327

`A219883(∑[4*n]+1)`
-/

namespace A219877.P14093263731293789327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219877.P14093263731293789327

/-! ## A219877.P643123211838126250

`record[A219883(Δ[A235355(n)])]`
-/

namespace A219877.P643123211838126250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219877.P643123211838126250

/-! ## A219877.P5824242233019296972

`and(-1, A219883(A001844(n)))`
-/

namespace A219877.P5824242233019296972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219883 (A001844 n).toNat)

end

end A219877.P5824242233019296972

/-!
# A219878: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219878, there is no canonical definition to state claims against.
-/

/-! ## A219878.P2105863957575769137

`A219883(∑[n+3]+1)`
-/

namespace A219878.P2105863957575769137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219878.P2105863957575769137

/-!
# A219879: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A219879, there is no canonical definition to state claims against.
-/

/-! ## A219879.P4123379417626417988

`A219883(∑[n+5]-(n-2))`
-/

namespace A219879.P4123379417626417988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A219879.P4123379417626417988

/-!
# A219880: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX5 array.

The programs for A219880, there is no canonical definition to state claims against.
-/

/-! ## A219880.P11887302484544354425

`A219883(Δ[A264443(n)])`
-/

namespace A219880.P11887302484544354425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (f1 (n + 1) - f1 n).toNat

end

end A219880.P11887302484544354425

/-! ## A219880.P6185870901903598885

`A219883(A046691(n+3))`
-/

namespace A219880.P6185870901903598885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A046691 (n + 3)).toNat

end

end A219880.P6185870901903598885

/-! ## A219880.P11085110695401754714

`A219883(A060577(n+4))`
-/

namespace A219880.P11085110695401754714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A060577 (n + 4)).toNat

end

end A219880.P11085110695401754714

/-! ## A219880.P8200883167372154369

`A219883(A056115(n)+11)`
-/

namespace A219880.P8200883167372154369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A056115 n + 11).toNat

end

end A219880.P8200883167372154369

/-! ## A219880.P10188915820134192930

`A219883(eq[2, A092921(n)])`
-/

namespace A219880.P10188915820134192930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219880.P10188915820134192930

/-!
# A219881: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A219881, there is no canonical definition to state claims against.
-/

/-! ## A219881.P6905963116910174426

`A219883(A052905(n+3))`
-/

namespace A219881.P6905963116910174426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A052905 (n + 3)).toNat

end

end A219881.P6905963116910174426

/-! ## A219881.P14404253606118284745

`A219883(A056119(n)+16)`
-/

namespace A219881.P14404253606118284745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A056119 n + 16).toNat

end

end A219881.P14404253606118284745

/-! ## A219881.P306146441521527868

`A219883(eq[3, A219347(n)])`
-/

namespace A219881.P306146441521527868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219881.P306146441521527868

/-! ## A219881.P14787086884432562118

`A219883(eq[3, A274661(n)])`
-/

namespace A219881.P14787086884432562118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219881.P14787086884432562118

/-! ## A219881.P3181641766022853172

`A219883(eq[5, A193592(n)])`
-/

namespace A219881.P3181641766022853172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219881.P3181641766022853172

/-!
# A219882: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A219882, there is no canonical definition to state claims against.
-/

/-! ## A219882.P10379315248072269433

`A219883(A055999(n+4))`
-/

namespace A219882.P10379315248072269433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A055999 (n + 4)).toNat

end

end A219882.P10379315248072269433

/-! ## A219882.P11188417729590685036

`A219883(eq[4, A219347(n)])`
-/

namespace A219882.P11188417729590685036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219882.P11188417729590685036

/-! ## A219882.P4329661729229816210

`A219883(eq[6, A193592(n)])`
-/

namespace A219882.P4329661729229816210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219882.P4329661729229816210

/-! ## A219882.P18260703784556618495

`A219883(A052905(n+4)-1)`
-/

namespace A219882.P18260703784556618495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A052905 (n + 4) - 1).toNat

end

end A219882.P18260703784556618495

/-!
# A219884: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3 X n array.

The programs for A219884, there is no canonical definition to state claims against.
-/

/-! ## A219884.P16222584137332181988

`A219883(∑[n+2]+4)`
-/

namespace A219884.P16222584137332181988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219884.P16222584137332181988

/-! ## A219884.P9704578882661120699

`or(char[1], A219883(A167614(n+1)))`
-/

namespace A219884.P9704578882661120699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219883 (A167614 (n + 1)).toNat)

end

end A219884.P9704578882661120699

/-! ## A219884.P17172200225733353880

`A219883(A167614(n+1))+A025442(n)`
-/

namespace A219884.P17172200225733353880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167614 (n + 1)).toNat + A025442 n

end

end A219884.P17172200225733353880

/-! ## A219884.P15291296122143297009

`A219883(A167614(n+1))+A025443(n)`
-/

namespace A219884.P15291296122143297009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167614 (n + 1)).toNat + A025443 n

end

end A219884.P15291296122143297009

/-! ## A219884.P11875706090585600168

`A219883(A167614(n+1))+A025469(n)`
-/

namespace A219884.P11875706090585600168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167614 (n + 1)).toNat + A025469 n

end

end A219884.P11875706090585600168

/-!
# A219885: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219885, there is no canonical definition to state claims against.
-/

/-! ## A219885.P4571399870977593570

`A219883(∑[n+3]+7)`
-/

namespace A219885.P4571399870977593570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219885.P4571399870977593570

/-!
# A219886: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5 X n array.

The programs for A219886, there is no canonical definition to state claims against.
-/

/-! ## A219886.P12366258608387172257

`A219883(C(n+6, 2)-n)`
-/

namespace A219886.P12366258608387172257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (Nat.choose (n + 6) 2 - n)

end

end A219886.P12366258608387172257

/-! ## A219886.P4711962860040510965

`A219883(A167499(n+3))`
-/

namespace A219886.P4711962860040510965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167499 (n + 3)).toNat

end

end A219886.P4711962860040510965

/-! ## A219886.P3646352670919379519

`A219883(A155212(n)+13)`
-/

namespace A219886.P3646352670919379519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A155212 n + 13).toNat

end

end A219886.P3646352670919379519

/-! ## A219886.P1083700107441135200

`A219883(A056000(n)+15)`
-/

namespace A219886.P1083700107441135200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A056000 n + 15).toNat

end

end A219886.P1083700107441135200

/-! ## A219886.P14215894375561058314

`A219883(eq[7, A066657(n)])`
-/

namespace A219886.P14215894375561058314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219886.P14215894375561058314

/-!
# A219887: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219887, there is no canonical definition to state claims against.
-/

/-! ## A219887.P2720419340531116779

`A219883(A167499(n+4)+1)`
-/

namespace A219887.P2720419340531116779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167499 (n + 4) + 1).toNat

end

end A219887.P2720419340531116779

/-! ## A219887.P9564559956739941550

`A219883(A167614(n+4)+3)`
-/

namespace A219887.P9564559956739941550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167614 (n + 4) + 3).toNat

end

end A219887.P9564559956739941550

/-! ## A219887.P12079542786010698448

`A219883(A000217(n+5)+6)`
-/

namespace A219887.P12079542786010698448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A000217 (n + 5) + 6).toNat

end

end A219887.P12079542786010698448

/-! ## A219887.P9609513557681702405

`A219883(A046691(n+3)+10)`
-/

namespace A219887.P9609513557681702405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A046691 (n + 3) + 10).toNat

end

end A219887.P9609513557681702405

/-! ## A219887.P16241974933909691238

`A219883(eq[7, A131818(n+1)])`
-/

namespace A219887.P16241974933909691238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219887.P16241974933909691238

/-!
# A219888: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A219888, there is no canonical definition to state claims against.
-/

/-! ## A219888.P625528625222011462

`A219883(A056119(n)+28)`
-/

namespace A219888.P625528625222011462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A056119 n + 28).toNat

end

end A219888.P625528625222011462

/-! ## A219888.P11705249844731948710

`A219883(eq[11, A066657(n)])`
-/

namespace A219888.P11705249844731948710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219888.P11705249844731948710

/-! ## A219888.P6724567716569086885

`record[A219883(lt[8, A066657(n)])]`
-/

namespace A219888.P6724567716569086885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219888.P6724567716569086885

/-! ## A219888.P317623014134180544

`A219883(A167614(n+5)+4)`
-/

namespace A219888.P317623014134180544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219883 (A167614 (n + 5) + 4).toNat

end

end A219888.P317623014134180544

/-!
# A219889: Number of directed 2-regular graphs on n nodes.

The programs for A219889, there is no canonical definition to state claims against.
-/

/-! ## A219889.P8004385494976705469

`A350910(∑[n+3]+1)`
-/

namespace A219889.P8004385494976705469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219889.P8004385494976705469

/-! ## A219889.P2046938371286201005

`record[A350910(∑[A029340(n)])]`
-/

namespace A219889.P2046938371286201005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219889.P2046938371286201005

/-! ## A219889.P6050629779447641952

`record[A350910(A186349(n+1))]`
-/

namespace A219889.P6050629779447641952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (A186349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219889.P6050629779447641952

/-! ## A219889.P7828499101535428504

`record[A350910(A206924(n+1))]`
-/

namespace A219889.P7828499101535428504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (A206924 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219889.P7828499101535428504

/-!
# A219890: Number of directed 3-regular graphs on n nodes.

The programs for A219890, there is no canonical definition to state claims against.
-/

/-! ## A219890.P13000103568760110177

`A350910(∑[n+4]+3)`
-/

namespace A219890.P13000103568760110177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219890.P13000103568760110177

/-! ## A219890.P3873271792004646332

`record[A350910(A001954(n))]`
-/

namespace A219890.P3873271792004646332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (A001954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219890.P3873271792004646332

/-! ## A219890.P16652327689439165913

`record[A350910(A068980(n))]`
-/

namespace A219890.P16652327689439165913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (A068980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219890.P16652327689439165913

/-!
# A219891: Number of directed 4-regular graphs on n nodes.

The programs for A219891, there is no canonical definition to state claims against.
-/

/-! ## A219891.P17833513801390266769

`A350910(∑[n+5]+6)`
-/

namespace A219891.P17833513801390266769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219891.P17833513801390266769

/-! ## A219891.P2576656024470273360

`record[A350910(A001960(n))]`
-/

namespace A219891.P2576656024470273360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (A001960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219891.P2576656024470273360

/-!
# A219892: Number of directed 5-regular graphs on n nodes.

The programs for A219892, there is no canonical definition to state claims against.
-/

/-! ## A219892.P17495804583891877916

`A350910(∑[n+5]+16)`
-/

namespace A219892.P17495804583891877916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350910 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219892.P17495804583891877916

/-!
# A219894: Number of directed 2-regular graphs on n nodes without directed 2-cycles.

The programs for A219894, there is no canonical definition to state claims against.
-/

/-! ## A219894.P4697087047694169231

`A166534(a(n-1))` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A219894.P4697087047694169231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  A166534 (a (n - 1)).toNat

end

end A219894.P4697087047694169231

/-!
# A219896: Binary numbers with curling number > 1.

The programs for A219896, there is no canonical definition to state claims against.
-/

/-! ## A219896.P8340247443590551384

`A007088(A219897(n+1))`
-/

namespace A219896.P8340247443590551384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A219897 (n + 1)).toNat

end

end A219896.P8340247443590551384

/-! ## A219896.P10383323011314067636

`A007088(comp[A219764(n+1)])`
-/

namespace A219896.P10383323011314067636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A219896.P10383323011314067636

/-! ## A219896.P7869881871567555972

`A007088(lt[1, A181935(n)])`
-/

namespace A219896.P7869881871567555972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A219896.P7869881871567555972

/-! ## A219896.P3578769150971782891

`A185544(2*A219897(n+1))`
-/

namespace A219896.P3578769150971782891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A219897 (n + 1)).toNat

end

end A219896.P3578769150971782891

/-! ## A219896.P11048387755211170969

`A185544(2*comp[A219764(n+1)])`
-/

namespace A219896.P11048387755211170969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A219896.P11048387755211170969

/-!
# A219897: Numbers whose binary expansion has curling number > 1.

The programs for A219897, there is no canonical definition to state claims against.
-/

/-! ## A219897.P8943491418040893593

`comp[A219764(n+1)]`
-/

namespace A219897.P8943491418040893593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219897.P8943491418040893593

/-! ## A219897.P5779718947195136674

`lt[char[A219764(n+1)], A329379(2*n+1)]`
-/

namespace A219897.P5779718947195136674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A219897.P5779718947195136674

/-! ## A219897.P15972653879299353315

`lt[1, A181935(n)]`
-/

namespace A219897.P15972653879299353315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219897.P15972653879299353315

/-! ## A219897.P2361791608666855043

`eq[1, A057427(A181935(n)-1)]`
-/

namespace A219897.P2361791608666855043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A181935 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219897.P2361791608666855043

/-! ## A219897.P13700149693431264053

`eq[1, A001221(or(1, A181935(n)))]`
-/

namespace A219897.P13700149693431264053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A181935 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219897.P13700149693431264053

/-! ## A219897.P3671545613986736194

`eq[1, A181935(a(A181935(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A219897.P3671545613986736194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A181935 (f2 (A181935 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219897.P3671545613986736194

/-! ## A219897.P12625158753699478921

`lt[0, A138503(char[A219764(n+1)]+2*n+3)]`
-/

namespace A219897.P12625158753699478921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219764 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 ((if ∃ j, f3 j = (n : ℤ) then 1 else 0) + (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219897.P12625158753699478921

/-! ## A219897.P14744414683359478689

`eq[1, A050326(A181935(n)²²)+1]`
-/

namespace A219897.P14744414683359478689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 ((A181935 n ^ 2) ^ 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219897.P14744414683359478689

/-!
# A219898: Record values in A214551.

The programs for A219898, the canonical program `A219898.P16621012416536321040` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219898 has offset 1).

The definition of A219898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 698 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219898.P16621012416536321040

`record[A214551(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219898

/-- `record[A214551(n)]` -/
def P16621012416536321040.Spec : Prop :=
  ∀ n, P16621012416536321040.a n = A219898 (n + 1)

theorem P16621012416536321040.correct : P16621012416536321040.Spec := by
  intro n
  simp only [A219898, Nat.add_sub_cancel]

end A219898

/-! ## A219898.P5689593033275256410

`record[A214322(A214653(n+1))]`
-/

namespace A219898.P5689593033275256410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214322 (A214653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219898.P5689593033275256410

namespace A219898

/-- `record[A214322(A214653(n+1))]` -/
def P5689593033275256410.Spec : Prop :=
  ∀ n, P5689593033275256410.a n = A219898 (n + 1)

end A219898

/-! ## A219898.P2279773385325477535

`record[A214322(eq[1, A214323(n)])]`
-/

namespace A219898.P2279773385325477535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214322 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219898.P2279773385325477535

namespace A219898

/-- `record[A214322(eq[1, A214323(n)])]` -/
def P2279773385325477535.Spec : Prop :=
  ∀ n, P2279773385325477535.a n = A219898 (n + 1)

end A219898

/-! ## A219898.P236283196383612834

`record[A214322(n)/A214323(n)]`
-/

namespace A219898.P236283196383612834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214322 n : ℚ) / (A214323 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219898.P236283196383612834

namespace A219898

/-- `record[A214322(n)/A214323(n)]` -/
def P236283196383612834.Spec : Prop :=
  ∀ n, P236283196383612834.a n = (A219898 (n + 1) : ℚ)

end A219898

/-! ## A219898.P8680866783790882196

`record[A214322(n+1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A219898.P8680866783790882196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A214322 (n + 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219898.P8680866783790882196

namespace A219898

/-- `record[A214322(n+1)-a(n-2)]` -/
def P8680866783790882196.Spec : Prop :=
  ∀ n, P8680866783790882196.a n = A219898 (n + 1)

end A219898

/-!
# A219899: Number of classes of Butson-type Hadamard matrices of order 2n over 4th roots of unity.

The programs for A219899, there is no canonical definition to state claims against.
-/

/-! ## A219899.P833664519030736671

`A083653(∑[A062272(n)²])`
-/

namespace A219899.P833664519030736671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219899.P833664519030736671

/-! ## A219899.P1964603197937240901

`or(A057354(A202359(n)), A285649(n))`
-/

namespace A219899.P1964603197937240901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057354 (A202359 n).toNat) (A285649 n)

end

end A219899.P1964603197937240901

